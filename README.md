# dokploy-test-pocketbase-app

Minimal [PocketBase](https://pocketbase.io) app embedded in Go.

## Requirements

- Go 1.27+

## Run

```bash
go run . serve
```

Admin UI: http://127.0.0.1:8090/_/

## Build

```bash
CGO_ENABLED=0 go build -o pocketbase .
./pocketbase serve
```

Data is stored in `./pb_data/` (ignored by git).