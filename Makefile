
all: sfml

sfml:
	mkdir -p lib
	@(cd ./src/SFML && $(MAKE))

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
