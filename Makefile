PREFIX = /usr/bin/
PREFIX_FISH = /usr/share/fish/completions/

install:
	mkdir -p $(DESTDIR)$(PREFIX)
	cp -f theterm $(DESTDIR)$(PREFIX)
	@if command -v fish >/dev/null; then\
		cp -f theterm.fish $(DESTDIR)$(PREFIX_FISH);\
	fi

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/theterm
	rm -f $(DESTDIR)$(PREFIX_FISH)/theterm.fish
