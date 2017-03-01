BUILD=bin

.PHONY: all

all: clean
	mkdir -p $(BUILD)
	pdflatex -output-directory=$(BUILD) arl-form-266.tex

clean:
	mkdir -p $(BUILD)
	rm -f $(BUILD)/*
