ifndef DESTDIR
DESTDIR=/usr/
endif
ifndef CONFDIR
CONFDIR=/etc
endif

install:
	install -v -m 644 uio-kmod-lib.sh $(DESTDIR)/lib/kvc/
	install -v -m 644 uio-kmod.conf $(CONFDIR)/kvc/
	install -v -m 755 uio-kmod-wrapper.sh $(DESTDIR)/lib/kvc/
	ln -sf ../lib/kvc/uio-kmod-wrapper.sh $(DESTDIR)/bin/spkut
