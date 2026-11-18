FROM golang:1.27-alpine AS builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .
RUN CGO_ENABLED=0 go build -o pocketbase .

FROM alpine:3.21

RUN apk add --no-cache ca-certificates tzdata

WORKDIR /app

COPY --from=builder /app/pocketbase .
COPY pb_public ./pb_public

EXPOSE 8090

VOLUME ["/app/pb_data"]

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]