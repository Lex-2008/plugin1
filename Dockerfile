ARG ARCH=amd64
FROM ${ARCH}/alpine:latest
ADD script.sh /bin/
RUN chmod +x /bin/script.sh
RUN apk -Uuv add curl ca-certificates
ENTRYPOINT /bin/script.sh
