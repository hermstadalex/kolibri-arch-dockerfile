FROM base/archlinux:2015.06.01
MAINTAINER Learning Equality

COPY ./build_env.sh /build_env.sh
RUN /build_env.sh
VOLUME /in
VOLUME /out
COPY ./build_pkg.sh /build_pkg.sh
CMD /build_pkg.sh 
