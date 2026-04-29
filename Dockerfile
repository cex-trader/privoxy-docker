FROM alpine:latest
RUN apk add --no-cache privoxy gettext
COPY privoxy.conf.template /etc/privoxy/privoxy.conf.template
EXPOSE 8118
CMD ["sh", "-c", "envsubst < /etc/privoxy/privoxy.conf.template > /etc/privoxy/config && privoxy --no-daemon /etc/privoxy/config"]
