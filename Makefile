build:
	go generate
	env GOOS=wasip1 GOARCH=wasm go build -buildmode=c-shared -o sablierproxywasm.wasm .

test:
	go test .

lint:
	golangci-lint run

fmt:
	golangci-lint run --fix
