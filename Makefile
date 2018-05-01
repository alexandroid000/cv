all: \
    	research_statement.pdf \
    	NillesCV.pdf

research_statement.pdf: research_statement.md
	pandoc --data-dir=/home/alli/common --filter=pandoc-citeproc --from=markdown --to=latex	-o $@ $<
	
NillesCV.pdf: NillesCV.md
	pandoc --template=res_template.latex --from=markdown --to=latex -o $@ $<
