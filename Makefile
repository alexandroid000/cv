all: \
    	research_statement.pdf \
    	research_statement.tex \
    	interest_statement.pdf \
    	interest_statement.tex \
    	NillesCV.tex \
    	NillesCV.pdf \
    	Nilles-resume-2pg.tex \
    	Nilles-resume-2pg.pdf \
    	Nilles-resume-1pg.tex \
    	Nilles-resume-1pg.pdf

%.tex: %.md
	pandoc -s --data-dir=/home/alli/common --filter=pandoc-citeproc --from=markdown --to=latex	-o $@ $<
	
NillesCV.pdf: NillesCV.tex
	pdflatex NillesCV.tex
	
%.pdf: %.tex
	pdflatex $<

#%.pdf: %.md
#	pandoc --data-dir=/home/alli/common --filter=pandoc-citeproc --from=markdown --to=latex	-o $@ $<
