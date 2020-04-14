.PHONY: install update build

install:
	go mod init
	go mod tidy

update:
	go mod tidy


build:
	GOOS=darwin GOARCH=amd64 CGO_ENABLED=0 go build -o deviceInfo bindings/go/samples/nvml/deviceInfo/main.go

run:
	go run bindings/go/samples/nvml/deviceInfo/main.go
