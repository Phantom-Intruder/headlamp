FROM docker.io/library/node:16.4 as builder

WORKDIR /headlamp-plugins

RUN mkdir -p /headlamp-plugins/build

COPY ./ /headlamp-plugins/build

FROM alpine:latest

# Copy the built plugin files from the base image to /plugins directory
COPY --from=builder /headlamp-plugins/build/ /plugins/

CMD ["/bin/sh -c 'mkdir -p /build/plugins && cp -r /plugins/* /build/plugins/'"]