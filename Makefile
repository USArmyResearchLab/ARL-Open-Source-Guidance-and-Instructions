BUILD=bin
FORM=arl-form-266
IN=$(FORM).tex

.PHONY: all

all: clean pdf-out md-out

md: clean md-out

pdf: clean pdf-out

pdf-out:
	pdflatex -output-directory=$(BUILD) $(IN)

md-out:
	pandoc $(IN) -o $(BUILD)/$(FORM).md

clean:
	mkdir -p $(BUILD)
	rm -f $(BUILD)/*
