FROM alpine:latest

WORKDIR /headlamp-plugins

RUN mkdir -p /plugins/

COPY ./ /plugins/

CMD ["/bin/sh -c 'mkdir -p /build/plugins && cp -r /plugins/* /build/plugins/'"]