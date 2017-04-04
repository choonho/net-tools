.PHONY: install clean

install:
	rm -f /usr/lib/python2.7/site-packages/net_tools-0.0.1-py2.7.egg
	python setup.py install

clean:
	rm -rf build dist net_tools.egg-info
	find ./ -name *.pyc -delete
test:
	python nettools/cli.py -L DEBUG
