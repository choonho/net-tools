.PHONY: install clean

install:
	make -C src install

clean:
	make -C src clean

.PHONY: test

test:
	python src/nettools/cli.py -L DEBUG
