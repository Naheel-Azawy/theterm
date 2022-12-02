PREFIX      = /usr/local
PREFIX_BIN  = $(DESTDIR)$(PREFIX)/bin
PREFIX_FISH = /usr/share/fish/completions

install:
	mkdir -p $(PREFIX_BIN) $(PREFIX_FISH)
	cp -f theterm $(PREFIX_BIN)/
	cp -f theterm.fish $(PREFIX_FISH)/

uninstall:
	rm -f $(PREFIX_BIN)/theterm
	rm -f $(PREFIX_FISH)/theterm.fish
