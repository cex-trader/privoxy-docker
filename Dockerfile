FROM alpine:latest
RUN apk add --no-cache privoxy
COPY privoxy.conf.template /etc/privoxy/privoxy.conf.template
ENV LISTEN_ADDRESS=0.0.0.0:8118
ENV FORWARD_SOCKS5=192.168.1.2:1080
EXPOSE 8118
CMD ["sh", "-c", "envsubst < /etc/privoxy/privoxy.conf.template > /etc/privoxy/config && privoxy --no-daemon /etc/privoxy/config"]
