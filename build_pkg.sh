#!/bin/bash
su kol -c "cd /home/kol/pypi2pkgbuild && ./pypi2pkgbuild.py -d -n --pre file://$(readlink -f /in/*.whl)"
cp -r /home/kol/pypi2pkgbuild/*kolibri*/*.xz /out/
