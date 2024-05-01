OCAMLC=ocamlc 
TARGET=wyag
SRC=wyag.ml
TEST=testing.ml
TESTTARGET=testing

all: $(TARGET)

$(TARGET): $(SRC)
	$(OCAMLC) -o $(TARGET) $(SRC)

test: $(TESTSRC)
	$(OCAMLC) -o $(TESTTARGET) $(TESTSRC)


clean:
	rm -f $(TARGET) $(TESTSRC) *.cmi *.cmo

.PHONY: all clean test
