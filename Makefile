BUILD=bin
IN=arl-form-266.tex

.PHONY: all

all: clean
	pdflatex -output-directory=$(BUILD) $(IN)

md: clean
	pandoc $(IN) -o $(BUILD)/form.md

clean:
	mkdir -p $(BUILD)
	rm -f $(BUILD)/*
