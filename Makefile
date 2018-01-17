
tag := $(shell basename $(shell pwd)):latest

default: build

build:
	echo $(tag)
	docker build --tag $(tag) .

test: build
	docker run -ti $(tag) ipcalc

clean:
	rm -f *~

.PHONY: default build
