<!-- omit in toc -->
# Proxy Wasm Sablier Plugin

[![Go Report Card](https://goreportcard.com/badge/github.com/sablierapp/sablier-proxywasm-plugin)](https://goreportcard.com/report/github.com/sablierapp/sablier-proxywasm-plugin)
[![Discord](https://img.shields.io/discord/1298488955947454464?logo=discord&logoColor=5865F2&cacheSeconds=1&link=http%3A%2F%2F)](https://discord.gg/sDjU3wXw9g)

Start your containers on demand, shut them down automatically when there's no activity using [ProxyWasm](https://github.com/proxy-wasm).

You can use this plugin with any reverse proxy that implements the ProxyWasm specification.

- [Installation](#installation)
  - [Use the binary distribution](#use-the-binary-distribution)
  - [Compile your binary from the sources](#compile-your-binary-from-the-sources)
- [Usage](#usage)
- [Configuration](#configuration)
- [Examples](#examples)
  - [Apache APISIX](#apache-apisix)
  - [Envoy](#envoy)
  - [Istio](#istio)
  - [Nginx](#nginx)
- [Other Reverse Proxy Plugins](#other-reverse-proxy-plugins)
  - [Caddy](#caddy)
  - [Traefik](#traefik)
- [Community](#community)
- [Support](#support)

## Installation

You can install Sablier using one of the following methods:

- [Use the binary distribution](#use-the-binary-distribution)
- [Compile your binary from the sources](#compile-your-binary-from-the-sources)

### Use the binary distribution

Grab the latest binary from the [releases](https://github.com/sablierapp/sablier-proxywasm-release/releases) page and use it:

<!-- x-release-please-start-version -->
```bash
wget https://github.com/sablierapp/sablier-proxywasm-plugin/releases/download/v1.1.0/sablier-proxywasm-plugin.wasm
```
<!-- x-release-please-end -->

### Compile your binary from the sources

```bash
git clone git@github.com:sablierapp/sablier-proxywasm-plugin.git
cd sablier-proxywasm-plugin
make

./sablier-proxywasm-plugin.wasm
```

## Usage

The usage depends on the reverse proxy integration with Proxy Wasm. 

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

## Other Reverse Proxy Plugins

### Caddy

<img src="./docs/assets/img/caddy.png" alt="Caddy" width="100" align="right" />

Sablier provides a native Caddy module for seamless integration with Caddy v2.

**Quick Start:**
1. Build Caddy with the Sablier module using `xcaddy`
2. Add Sablier directives to your Caddyfile
3. Configure dynamic scaling rules

📚 **[Full Documentation](https://github.com/sablierapp/sablier-caddy-plugin)** | 💻 **[Plugin Repository](https://github.com/sablierapp/sablier-caddy-plugin)**

---

### Traefik

<img src="./docs/assets/img/traefik.png" alt="Traefik" width="100" align="right" />

Sablier provides a powerful middleware plugin for Traefik, the cloud-native application proxy.

**Quick Start:**
1. Add the Sablier plugin to your Traefik static configuration
2. Create Sablier middleware in your dynamic configuration
3. Apply the middleware to your routes

📚 **[Full Documentation](https://github.com/sablierapp/sablier-traefik-plugin)** | 💻 **[Plugin Repository](https://github.com/sablierapp/sablier-traefik-plugin)**

## Community

Join our Discord server to discuss and get support!

[![Discord](https://img.shields.io/discord/1298488955947454464?logo=discord&logoColor=5865F2&cacheSeconds=1&link=http%3A%2F%2F)](https://discord.gg/sDjU3wXw9g)

## Support

See [SUPPORT.md](SUPPORT.md)