all: \
    	research_statement.pdf \
    	research_statement.tex \
    	career_goals.pdf \
    	career_goals.tex \
    	NillesCV.tex \
    	NillesCV.pdf

%.pdf: %.md
	pandoc --data-dir=/home/alli/common --filter=pandoc-citeproc --from=markdown --to=latex	-o $@ $<
	
%.tex: %.md
	pandoc -s --data-dir=/home/alli/common --filter=pandoc-citeproc --from=markdown --to=latex	-o $@ $< 
