# dokploy-test-pocketbase-app

Minimal Go HTTP service for deployment testing (e.g. Dokploy).

## Requirements

- Go 1.22+

## Run locally

```bash
go run .
```

The server listens on `:8080` by default. Set `ADDR` to override (for example `ADDR=:3000 go run .`).

## Build

```bash
go build -o bin/server .
./bin/server
```

## Endpoints

- `GET /` — returns `ok`
- `GET /health` — health check (200, body `ok`)