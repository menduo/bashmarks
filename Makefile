INSTALL_DIR=~/.local/bin

all:
	@echo "Please run 'make install'"

install:
	@echo ""
	mkdir -p $(INSTALL_DIR)
	cp bashmarks.sh $(INSTALL_DIR)
	@echo "source $(INSTALL_DIR)/bashmarks.sh"  >> ~/.bashrc
	@echo "source $(INSTALL_DIR)/bashmarks.sh"  >> ~/.bash_profile
	@echo "Please run 'source ~/.bash_profile' to use bashmarks "
	@echo ""
	@echo 'USAGE:'
	@echo '------'
	@echo 's <bookmark_name> - Saves the current directory as "bookmark_name"'
	@echo 'g <bookmark_name> - Goes (cd) to the directory associated with "bookmark_name"'
	@echo 'p <bookmark_name> - Prints the directory associated with "bookmark_name"'
	@echo 'd <bookmark_name> - Deletes the bookmark'
	@echo 'l                 - Lists all available bookmarks'

.PHONY: all install
