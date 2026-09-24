NAME = vulnRec
VERSION = 0.0.2
ARCHIVE = $(NAME)-$(VERSION).tar.gz
DIR = $(NAME)-$(VERSION)
PREFIX = /usr/local/bin

.PHONY: all build install clean

install: $(DIR)
	install -d $(PREFIX)
	cp $(DIR)/bin/* $(PREFIX)/

(DIR): $(ARCHIVE)
	tar xzf $(ARCHIVE)
	touch $@

.PHONY: clean

clean:
	rm -rf $(DIR)