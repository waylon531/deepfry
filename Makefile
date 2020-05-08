CC ?= clang
# NOTE: This is ridiculously fragile
MAGICKINC ?= $(shell find /usr/include -name "ImageMagi*" -type d | tail -n1)
MAGICKLIB ?= $(shell find /lib /usr/lib -name "libMagickCore*" | sed 's!.*/!!' | tail -n1)

default:
	${CC} -I${MAGICKINC} main.c -lcurl -ltesseract -llept -l:${MAGICKLIB} -O3 -o deepfry
