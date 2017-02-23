python ./pypi2pkgbuild.py -d --pre --no-install file://$(readlink -f *.whl)
cp -r /home/kol/pypi2pkgbuild/*kolibri*/*.xz /home/kol/pypi2pkgbuild/out/
