export DEBUGBUILD = no
ifeq ($(DEBUGBUILD), yes)
    DEBUGFLAGS = -g -DDEBUG
else
    DEBUGFLAGS = -O2 -DNDEBUG
endif

export CC        = g++
export CFLAGS    = -W -Wall -ansi -I../../include $(DEBUGFLAGS) $(CXXFLAGS)
export LDFLAGS  += -L../../lib
export EXECPATH  = ../bin

all: ftp-sample opengl-sample pong-sample post-fx-sample qt-sample sockets-sample sound-sample sound_capture-sample voip-sample window-sample wxwidgets-sample X11-sample

ftp-sample:
	@(mkdir -p bin)
	@(cd ./ftp && $(MAKE))

opengl-sample:
	@(mkdir -p bin)
	@(cd ./opengl && $(MAKE))

pong-sample:
	@(mkdir -p bin)
	@(cd ./pong && $(MAKE))

post-fx-sample:
	@(mkdir -p bin)
	@(cd ./post-fx && $(MAKE))

qt-sample:
	@(mkdir -p bin)
	@(cd ./qt && $(MAKE))

sockets-sample:
	@(mkdir -p bin)
	@(cd ./sockets && $(MAKE))

sound-sample:
	@(mkdir -p bin)
	@(cd ./sound && $(MAKE))

sound_capture-sample:
	@(mkdir -p bin)
	@(cd ./sound_capture && $(MAKE))

voip-sample:
	@(mkdir -p bin)
	@(cd ./voip && $(MAKE))

window-sample:
	@(mkdir -p bin)
	@(cd ./window && $(MAKE))

wxwidgets-sample:
	@(mkdir -p bin)
	@(cd ./wxwidgets && $(MAKE))

X11-sample:
	@(mkdir -p bin)
	@(cd ./X11 && $(MAKE))

.PHONY: clean mrproper

make_each_dir = \
	  cd  ./ftp           && $(MAKE) $@ && \
	  cd ../opengl        && $(MAKE) $@ && \
	  cd ../pong          && $(MAKE) $@ && \
	  cd ../post-fx       && $(MAKE) $@ && \
	  cd ../qt            && $(MAKE) $@ && \
	  cd ../sockets       && $(MAKE) $@ && \
	  cd ../sound         && $(MAKE) $@ && \
	  cd ../sound_capture && $(MAKE) $@ && \
	  cd ../voip          && $(MAKE) $@ && \
	  cd ../window        && $(MAKE) $@ && \
	  cd ../wxwidgets     && $(MAKE) $@ && \
	  cd ../X11           && $(MAKE) $@

clean:
	@($(make_each_dir))

distclean: mrproper

mrproper: clean
	@($(make_each_dir))
