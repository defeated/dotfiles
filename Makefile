.PHONY: all
all: test-install

.PHONY: install
install:
	stow --dotfiles --target ~/ */

.PHONE: test-install
test-install:
	stow --dotfiles --target ~/ --simulate --verbose=2 */
