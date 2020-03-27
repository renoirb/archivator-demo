.DEFAULT: all
.PHONY: all
all: node_modules/.bin
	yarn run dist

node_modules/.bin:
	yarn

