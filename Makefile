ARCH := $(shell uname -m)

all:
	@echo "[build] compiling app..."
	@cc -O2 -o app app.c
	@echo "[build] running codegen fixtures..."
	@./tools/gen-$(ARCH)
	@echo "[build] done."
