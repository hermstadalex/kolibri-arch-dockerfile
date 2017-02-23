FROM base/archlinux:2015.06.01
ADD setup_env_local.sh /
RUN source /setup_env_local.sh


USER kol

WORKDIR /home/kol/
RUN git clone https://github.com/anntzer/pypi2pkgbuild.git
WORKDIR /home/kol/pypi2pkgbuild/

RUN mkdir out
ADD ./pypi2pkgbuild.sh .
ADD in .

ADD sudoers.tmp /etc/sudoers.tmp
