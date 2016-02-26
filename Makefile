20011023.pdf: 20011023.dvi
	dvipdfmx tmp.dvi
	mv tmp.pdf 20011023.pdf

20011023.dvi: *.tex
	sed -e 's/。/. /g' -e 's/、/, /g' 20011023.tex > tmp.tex
	platex tmp.tex
	#pbibtex tmp.aux
	#platex tmp.tex
	platex tmp.tex

clean:
	rm -f *.aux *.log *.dvi *.bbl *.blg *.ilg *.idx *.toc *.ind tmp.tex
