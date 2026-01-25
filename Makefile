.PHONY: all install test-install

all: test-install

install:
	stow */

test-install:
	stow --simulate */
