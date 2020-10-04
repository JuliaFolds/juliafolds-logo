.PHONY: all

all: images/juliafolds-logo.png images/juliafolds-logo.ico

images/juliafolds-logo.png: src/juliafolds-logo.svg
	inkscape --export-filename=$@ $<

images/juliafolds-logo.ico: src/juliafolds-logo.svg
	convert -background none $< -define icon:auto-resize $@
