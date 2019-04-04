FROM alpine
ENV REDIS_HOST=localhost
ENV REDIS_PORT=6379
RUN apk --no-cache add redis
ADD  test.sh /test.sh
ENTRYPOINT [ "/test.sh" ]
