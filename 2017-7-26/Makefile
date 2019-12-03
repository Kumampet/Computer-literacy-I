LATEX = platex
DVIPS = dvips
PS2PDF = ps2pdf
BIBTEX = pbibtex

FILE = test

all: tex dvips ps2pdf clean

bib: $(FILE).tex
	$(LATEX) $(FILE).tex
	$(BIBTEX) $(FILE)
	$(LATEX) $(FILE).tex
	$(LATEX) $(FILE).tex

tex: $(FILE).tex
	$(LATEX) $(FILE).tex
	$(LATEX) $(FILE).tex

dvips: $(FILE).dvi
	$(DVIPS) $(FILE).dvi -o $(FILE).ps

ps2pdf: $(FILE).ps
	$(PS2PDF) $(FILE).ps $(FILE).pdf
	rm $(FILE).ps

clean:
	rm $(FILE).dvi $(FILE).aux $(FILE).log
