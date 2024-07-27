FROM alpine:latest

RUN mkdir -p /plugins/

COPY ./ /plugins/

CMD ["/bin/sh -c 'mkdir -p /build/plugins && cp -r /plugins/* /build/plugins/'"]