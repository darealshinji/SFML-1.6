SRC     = $(wildcard *.cpp)
OBJ     = $(SRC:.cpp=.o)

ifeq ($(STATIC), yes)
    LIB     = libsfml-graphics-s.a
    LIBNAME = $(LIBPATH)/$(LIB)
    INSTALL = 
else
    LIB     = libsfml-graphics.so
    LIBNAME = $(LIBPATH)/$(LIB).$(VERSION)
    INSTALL = && $(LN) $(LNFLAGS) $(LIB).$(VERSION) $(DESTLIBDIR)/$(LIB)
endif

all: $(LIB)

libsfml-graphics-s.a: $(OBJ) $(OBJGLEW) $(OBJJPEG) $(OBJPNG) $(OBJSOIL) $(OBJZLIB)
	$(AR) $(ARFLAGS) $(LIBNAME) $(OBJ) $(OBJGLEW) $(OBJJPEG) $(OBJPNG) $(OBJSOIL) $(OBJZLIB)

libsfml-graphics.so: $(OBJ)
	$(CXX) $(LDFLAGS) -Wl,-soname,$(LIB).$(VERSION) -o $(LIBNAME) $(OBJ) -lGLEW -ljpeg -lpng -lSOIL -lfreetype $(LIBPATH)/libsfml-system.so.$(VERSION) $(LIBPATH)/libsfml-window.so.$(VERSION) -lGL

$(OBJ): %.o: %.cpp
	$(CXX) -o $@ -c $< $(CXXFLAGS) -I/usr/include/freetype2

.PHONY: clean mrproper

clean:
	@rm -rf $(OBJ)

mrproper: clean
	@rm -rf $(LIBNAME)

install:
	@($(CP) $(LIBNAME) $(DESTLIBDIR) $(INSTALL))
