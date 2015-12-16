###############
# copy from https://drewsilcock.co.uk/using-make-and-latexmk/
# work on Mac
##############
LATEX=pdflatex
LATEXOPT=--shell-escape
NONSTOP=--interaction=nonstopmode

LATEXMK=latexmk
LATEXMKOPT=-pdf
CONTINUOUS=-pvc

MAIN=long_gong_cv
SOURCES=$(MAIN).tex Makefile 
#FIGURES := $(shell find figures/* images/* -type f)

all: $(MAIN).pdf


$(MAIN).pdf: $(SOURCES) 
	$(LATEXMK) $(LATEXMKOPT) \
            -pdflatex="$(LATEX) $(LATEXOPT) %O %S" $(MAIN)
	open $(MAIN).pdf
	rm -f $(MAIN).pdfsync
	rm -rf *~ *.tmp
	rm -f *.bbl *.blg *.aux *.end *.fls *.log *.out *.fdb_latexmk
	
	
force:
	rm $(MAIN).pdf
	$(LATEXMK) $(LATEXMKOPT) $(CONTINUOUS) \
            -pdflatex="$(LATEX) $(LATEXOPT) %O %S" $(MAIN)

clean:
	$(LATEXMK) -C $(MAIN)
	rm -f $(MAIN).pdfsync
	rm -rf *~ *.tmp
	rm -f *.bbl *.blg *.aux *.end *.fls *.log *.out *.fdb_latexmk

once:
	$(LATEXMK) $(LATEXMKOPT) -pdflatex="$(LATEX) $(LATEXOPT) %O %S" $(MAIN)

debug:
	$(LATEX) $(LATEXOPT) $(MAIN)

.PHONY: clean force once all