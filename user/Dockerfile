FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S tadegroup
RUN adduser -S -D -h /app tadeuser tadegroup
RUN chown -R tadeuser:tadegroup /app

USER tadeuser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go