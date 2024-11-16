.PHONY: all
all: test-install

.PHONY: install
install:
	stow */

.PHONE: test-install
test-install:
	stow --simulate */
