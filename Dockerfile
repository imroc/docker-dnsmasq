FROM alpine:3.20
RUN apk --no-cache add dnsmasq=${DNSMASQ_VERSION}
EXPOSE 53 53/udp
ENTRYPOINT ["/usr/sbin/dnsmasq", "-k"]
