 SHELL=/usr/local/bin/fish

.PHONY: clean build deploy upload

deploy: clean build upload

clean:
	jekyll clean --trace

build:
	jekyll build --trace
	tree -C -d | sed 's/^/                    /'

upload:
	scripts/upload
