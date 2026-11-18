# dokploy-test-pocketbase-app

PocketBase as a Go app (same layout as [examples/base](https://github.com/pocketbase/pocketbase/tree/master/examples/base)), pinned to the latest release for Dokploy deployment tests.

## Requirements

- Go 1.27+

## Local development

```bash
go mod download
go run . serve
```

Admin UI: http://127.0.0.1:8090/_/

## Build

```bash
CGO_ENABLED=0 go build -o pocketbase .
./pocketbase serve
```

## Docker

```bash
docker build -t dokploy-test-pocketbase-app .
docker run --rm -p 8090:8090 -v pb_data:/app/pb_data dokploy-test-pocketbase-app
```

## Directories

| Path | Purpose |
|------|---------|
| `pb_data/` | SQLite data (created at runtime; not committed) |
| `pb_public/` | Static files |
| `pb_hooks/` | Optional JS hooks (enable with `--hooksDir=./pb_hooks`) |