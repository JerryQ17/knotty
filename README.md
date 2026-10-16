# knotty

A programmable multi-agent harness with dynamic execution graphs.

## MSRV

This project is developed and tested with latest stable Rust. While previous Rust versions may work, we do not provide any guarantees.

## Development

This project uses [just](https://just.systems/) to run common development commands. See [Justfile](./Justfile) for a list of available commands.

### Setup

To set up your development environment, ensure you have [Rust installed](https://rust-lang.org/tools/install/), then run the following commands:

```bash
# Fisrt install cargo-binstall to install Rust binaries faster
# See https://github.com/cargo-bins/cargo-binstall#installation
curl -L --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash
# Then install just
cargo binstall -y just
# Finally install all other required dependencies
just init
```
