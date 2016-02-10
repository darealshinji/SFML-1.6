EXEC = voip
OBJ  = VoIP.o Client.o Server.o

all: $(EXEC)

voip: $(OBJ)
	$(CXX) $(LDFLAGS) -o $(EXECPATH)/$@ $(OBJ) -lsfml-audio -lsfml-network -lsfml-system

%.o: %.cpp
	$(CXX) -o $@ -c $< $(CXXFLAGS)

.PHONY: clean mrproper

clean:
	@rm -rf *.o

mrproper: clean
	@rm -rf $(EXECPATH)/$(EXEC)
