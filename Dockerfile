FROM alpine:3.20
ARG DNSMASQ_VERSION
RUN apk --no-cache add dnsmasq=~${DNSMASQ_VERSION}
EXPOSE 53 53/udp
ENTRYPOINT ["/usr/sbin/dnsmasq", "-k"]
