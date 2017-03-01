BUILD=bin

.PHONY: all

all: clean
	mkdir -p $(BUILD)
	pdftex arl-form-266.tex --output-directory $(BUILD)

clean:
	mkdir -p $(BUILD)
	rm -f $(BUILD)/*
