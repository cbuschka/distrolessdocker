FROM scratch

COPY /build/hello /hello

CMD [ "/hello" ]
