
all: sfml

sfml:
	@(cd ./src/SFML && $(MAKE))
	chmod 0644 lib/libsfml-*.so.1.6
	cd lib && \
	for l in libsfml-*.so.1.6 ; \
	do \
	  L=$$(echo $$l | cut -d. -f1) ;\
	  ln -s $$l $${L}.so ;\
	done

sfml-samples:
	@(cd ./samples && $(MAKE))

install:
	@(cd ./src/SFML && $(MAKE) $@)

clean:
	@(cd ./src/SFML && $(MAKE) $@)
	@(cd ./samples  && $(MAKE) $@)

distclean: mrproper

mrproper:
	@(cd ./src/SFML && $(MAKE) $@)
	@(cd ./samples  && $(MAKE) $@)
	rm -rf lib
