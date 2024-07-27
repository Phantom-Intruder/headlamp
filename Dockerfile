FROM alpine:latest

RUN mkdir -p /plugins/

COPY ./ /plugins/

RUN mkdir -p /build/plugins && cp -r /plugins/* /build/plugins/