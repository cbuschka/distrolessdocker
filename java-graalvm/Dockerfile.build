FROM oracle/graalvm-ce:20.2.0-java11

RUN gu install native-image
RUN mkdir -p /work
WORKDIR /work
ADD / /work/
CMD /work/build.sh
