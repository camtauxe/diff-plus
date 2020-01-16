NAME = diff+
PREFIX ?= /usr/local

# Generate man page
$(NAME).1: $(NAME)
	pod2man -r "v1.0" -c "Cameron Tauxe" $(NAME) > $(NAME).1

# Install executable and man page
.PHONY: install
install: $(NAME) $(NAME).1
	install -d $(PREFIX)/bin
	install -d $(PREFIX)/share/man/man1/
	install -m 0755 $(NAME) $(PREFIX)/bin/$(NAME)
	install -m 0644 $(NAME).1 $(PREFIX)/share/man/man1/$(NAME).1

.PHONY: uninstall
uninstall:
	rm -f $(PREFIX)/share/man/man1/$(NAME).1
	rm -f $(PREFIX)/bin/$(NAME)

.PHONY: clean
clean:
	rm -f $(NAME).1
