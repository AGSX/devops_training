FROM alpine:3.7

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY hello.sh .
RUN chmod a+x ./hello.sh

ENTRYPOINT [ "/usr/src/app/hello.sh" ]
CMD [ "Garci" ]
