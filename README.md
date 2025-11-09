<!-- omit in toc -->
# Proxy Wasm Sablier Plugin

[![Go Report Card](https://goreportcard.com/badge/github.com/sablierapp/sablier-caddy-plugin)](https://goreportcard.com/report/github.com/sablierapp/sablier-caddy-plugin)
[![Discord](https://img.shields.io/discord/1298488955947454464?logo=discord&logoColor=5865F2&cacheSeconds=1&link=http%3A%2F%2F)](https://discord.gg/6TXtfeWqx3)

Start your containers on demand, shut them down automatically when there's no activity using [ProxyWasm](https://github.com/proxy-wasm).

You can use this plugin with any reverse proxy that implements the ProxyWasm specification.

- [Installation](#installation)
- [Configuration](#configuration)
- [Examples](#examples)
  - [Apache APISIX](#apache-apisix)
  - [Envoy](#envoy)
  - [Istio](#istio)
  - [Nginx](#nginx)
- [Other Plugins](#other-plugins)
- [Community](#community)
- [Support](#support)

## Installation

Installation depends on the reverse proxy integration with Proxy Wasm. 

See [examples](#examples) for more details on how to set it up with providers.

## Configuration

You can load a JSON configuration such as:

```json
{ 
    "sablier_url": "sablier:10000", 
    "group": "my-group", 
    "session_duration": "1m", 
    "dynamic": { 
        "display_name": "My Group", 
        "theme": "hacker-terminal" 
    }
}
```

## Examples

### Apache APISIX

See the [Apache APISIX example](./examples/apacheapisix/) on how to use the plugin.

### Envoy

See the [envoy example](./examples/envoy/) on how to use the plugin.

### Istio

See the [istio example](./examples/istio/) on how to use the plugin.

### Nginx

See the [nginx example](./examples/nginx/) on how to use the plugin.

## Other Plugins

- [sablier-caddy-plugin](https://github.com/sablierapp/sablier-caddy-plugin)
- [sablier-traefik-plugin](https://github.com/sablierapp/sablier-traefik-plugin)

## Community

Join our Discord server to discuss and get support!

[![Discord](https://img.shields.io/discord/1298488955947454464?logo=discord&logoColor=5865F2&cacheSeconds=1&link=http%3A%2F%2F)](https://discord.gg/6TXtfeWqx3)

## Support

See [SUPPORT.md](SUPPORT.md)