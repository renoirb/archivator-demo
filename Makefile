.PHONY: dev
.DEFAULT: dev
dev:
	bundle exec jekyll serve

.PHONY: dist
dist: node_modules/.bin
	yarn run dist

node_modules/.bin:
	yarn

