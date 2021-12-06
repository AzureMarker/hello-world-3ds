# Project info
CRATE_NAME := hello-world-3ds

TARGET := armv6k-nintendo-3ds

export XARGO_RUST_SRC=rust-3ds-fork/library

all: $(CRATE_NAME)

target/$(TARGET)/release/$(CRATE_NAME).elf:
	xargo build --release --target $(TARGET)

$(CRATE_NAME): target/$(TARGET)/release/$(CRATE_NAME).elf

.PHONY: all $(CRATE_NAME)
