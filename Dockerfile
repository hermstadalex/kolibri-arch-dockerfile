FROM base/archlinux:2015.06.01

RUN echo "y" | pacman -Sy archlinux-keyring && pacman -Syy
RUN pacman-db-upgrade
RUN echo "y" | pacman -S git
RUN echo "y" | pacman -S python
RUN echo "y" | pacman -S python-pip
RUN echo "y" | pacman -S pkgfile
RUN echo "y" | pacman -S fakeroot
RUN pkgfile --update

RUN echo "y" | pacman -Sy archlinux-keyring && pacman -Syy
RUN printf "1-25\nY" | pacman -S base-devel
RUN echo "y" | pacman -S namcap

RUN useradd -m -G wheel -s /bin/bash kol

USER kol

WORKDIR /home/kol/
RUN git clone https://github.com/anntzer/pypi2pkgbuild.git
WORKDIR /home/kol/pypi2pkgbuild/
RUN git reset --hard 3089def2bdb7444ffb6bb86803fe7634a5de3515

RUN mkdir out
ADD in .

CMD python ./pypi2pkgbuild.py -d --pre --no-install file://$(readlink -f *.whl) && cp -r /home/kol/pypi2pkgbuild/*kolibri*/*.xz /home/kol/pypi2pkgbuild/out/
