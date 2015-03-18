all:
	pandoc -t revealjs -s slides.md --highlight-style=zenburn -H src/style.html -V theme=night --slide-level 1 -o index.html
check:
	linkchecker --check-extern index.html
pdf:
	pandoc -o devsummit-2015-scipy-arcgis-presentation-handout.pdf -V fontsize=12pt -V mainfont=Helvetica --latex-engine=xelatex slides.md
