BUILD=bin
IN=arl-form-266.tex

.PHONY: all

all: clean pdf-out md-out

md: clean md-out

pdf: clean pdf-out

pdf-out:
	pdflatex -output-directory=$(BUILD) $(IN)

md-out:
	pandoc $(IN) -o $(BUILD)/form.md

clean:
	mkdir -p $(BUILD)
	rm -f $(BUILD)/*
