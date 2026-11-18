# syntax=docker/dockerfile:1

FROM golang:1.22-alpine AS build

WORKDIR /src

COPY go.mod go.sum ./
RUN go mod download

COPY . .

ENV CGO_ENABLED=0
RUN go build -o /pocketbase .

FROM alpine:3.20

WORKDIR /app

COPY --from=build /pocketbase /app/pocketbase

EXPOSE 8090

ENTRYPOINT ["/app/pocketbase"]
CMD ["serve", "--http=0.0.0.0:8090"]