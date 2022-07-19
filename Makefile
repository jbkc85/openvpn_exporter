VERSION ?= $(shell cat VERSION)

build:
	GOOS=linux GOARCH=amd64 go build -o builds/openvpn_exporter-${VERSION}-linux .
	go build -o builds/openvpn_exporter-${VERSION}-darwin .

tidy:
	go mod tidy
