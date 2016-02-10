EXEC = ftp
OBJ  = Ftp.o

all: $(EXEC)

ftp: $(OBJ)
	$(CXX) $(LDFLAGS) -o $(EXECPATH)/$@ $(OBJ) -lsfml-network -lsfml-system

%.o: %.cpp
	$(CXX) -o $@ -c $< $(CXXFLAGS)

.PHONY: clean mrproper

clean:
	@rm -rf *.o

mrproper: clean
	@rm -rf $(EXECPATH)/$(EXEC)
