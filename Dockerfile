FROM golang:1.27 AS build

WORKDIR /go/src/sablier/plugins/proxywasm

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . /go/src/sablier/plugins/proxywasm

RUN make build

FROM scratch

COPY --from=build /go/src/sablier/plugins/proxywasm/sablierproxywasm.wasm ./plugin.wasm