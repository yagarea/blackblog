 SHELL=/usr/bin/fish

.PHONY: clean build deploy upload

deploy: clean build upload

clean:
	jekyll clean --trace

build:
	jekyll build --trace
	tree _site -C -d | sed 's/^/                    /'

upload:
	scripts/do-upload
