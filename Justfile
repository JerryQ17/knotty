set default-list

# Install development dependencies (Pre-requisite: cargo-binstall, and just itself of course)
init:
    cargo binstall -y cargo-nextest

# Format all source code
fmt:
    cargo fmt --all
    just --fmt

# Check the formatting of all source code
fmt-check:
    cargo fmt --all -- --check
    just --fmt --check

# Run linter on all source code
lint:
    cargo clippy --workspace --all-targets --locked -- -D warnings

# Build the project
build:
    cargo build --workspace --locked

# Generate documentation for the project
doc:
    RUSTDOCFLAGS="-D warnings" cargo doc --workspace --no-deps --locked

# Run all doc tests
doc-test:
    cargo test --workspace --doc --locked

# Run all tests, including doc tests
test: doc-test
    cargo nextest run --locked

# Run all checks performed in CI with the current active rust toolchain.
# This do not run test on stable, beta and nightly toolchains like in the CI.
[parallel]
ci: fmt-check lint doc test
