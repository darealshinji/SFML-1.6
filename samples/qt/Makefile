EXEC = qt
OBJ  = Main.o QSFMLCanvas.o

all: $(EXEC)

qt: $(OBJ)
	$(CXX) $(LDFLAGS) -o $(EXECPATH)/$@ $(OBJ) -lsfml-graphics -lsfml-window -lsfml-system -lQtCore -lQtGui -lX11

%.o: %.cpp
	$(CXX) -o $@ -c $< $(CXXFLAGS) -I/usr/include/qt4

.PHONY: clean mrproper

clean:
	@rm -rf *.o

mrproper: clean
	@rm -rf $(EXECPATH)/$(EXEC)
