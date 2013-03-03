
all: bquery.min.js

bquery.js: src/bquery.coffee Makefile
	coffee -cs < $< > $@

bquery.min.js: bquery.js
	closure --compilation_level WHITESPACE_ONLY < $< > $@

clean:
	rm -f bquery{,.min}.js
