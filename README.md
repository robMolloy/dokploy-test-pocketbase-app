# dokploy-test-pocketbase-app

Minimal [PocketBase](https://pocketbase.io/) app embedded in Go, for deployment testing (e.g. Dokploy).

Uses PocketBase [v0.22.34](https://github.com/pocketbase/pocketbase/releases/tag/v0.22.34), the latest release that still builds with Go 1.22.

## Requirements

- Go 1.22+

## Run locally

```bash
go run . serve
```

By default PocketBase listens on `http://127.0.0.1:8090`. Override the bind address with the `--http` flag, for example:

```bash
go run . serve --http=0.0.0.0:8080
```

Data is stored in `./pb_data` (created on first run).

## Build

```bash
CGO_ENABLED=0 go build -o bin/pocketbase .
./bin/pocketbase serve
```

## Admin UI

After the server starts, open the admin dashboard at `/_/`. On first run you will be prompted to create a superuser account.