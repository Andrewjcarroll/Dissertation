MAIN = Dissertation
LATEXMK = latexmk

.PHONY: all pdf clean veryclean watch

all: pdf

pdf:
	$(LATEXMK) -pdf -interaction=nonstopmode -file-line-error $(MAIN).tex

watch:
	$(LATEXMK) -pdf -pvc -interaction=nonstopmode -file-line-error $(MAIN).tex

clean:
	$(LATEXMK) -c $(MAIN).tex

veryclean:
	$(LATEXMK) -C $(MAIN).tex
	rm -f $(MAIN).ind $(MAIN).ilg $(MAIN).idx
