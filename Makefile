.PHONY: build

build:
	GOOS=darwin GOARCH=amd64 CGO_ENABLED=0 go build -o deviceInfo bindings/go/samples/nvml/deviceInfo/main.go
