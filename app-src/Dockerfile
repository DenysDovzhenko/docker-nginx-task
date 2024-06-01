FROM golang:1.22-alpine AS build

WORKDIR /app

COPY . .

RUN go mod download
RUN go build -o /app/goWeb

FROM alpine:latest

WORKDIR /app
COPY --from=build /app/goWeb .
ENV PORT=8080
EXPOSE 8080

ENTRYPOINT [ "/app/goWeb" ]
