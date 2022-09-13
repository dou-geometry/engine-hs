OutputDir = ./out
PdfDir = ./docs
GHC = ghc -dynamic -outputdir $(OutputDir) -no-keep-hi-files
TEX = ptex2pdf -u -l -ot "-synctex=1 -interaction=nonstopmode -file-line-error-style -shell-escape -output-directory $(PdfDir)" -output-directory $(PdfDir)

all: programs cleanTex
programs: fundamental readme main

define compileLHS
	$(GHC) $(1).lhs
	$(TEX) $(1).lhs
	$(TEX) $(1).lhs
endef

fundamental: prepDir
	$(call compileLHS, Fundamental)

readme: prepDir
	$(call compileLHS, README)
	mv README out/

main: readme
	cp README.lhs README.tex
	pandoc -s README.tex -o README.md
	sed -i '2,8d' README.md
	rm README.tex

prepDir:
	mkdir -p $(OutputDir)
	mkdir -p $(PdfDir)

clean:; rm -rf $(OutputDir) $(PdfDir) README.tex README.md
cleanTex: prepDir
	find $(PdfDir)/ -type f -name '*.aux' -delete
	find $(PdfDir)/ -type f -name '*.log' -delete
	find $(PdfDir)/ -type f -name '*.out' -delete
	find $(PdfDir)/ -type f -name '*.pyg' -delete
	find $(PdfDir)/ -type f -name '*.synctex.gz' -delete
	find $(PdfDir)/ -type f -name '*.toc' -delete
docs: cleanTex
	rm -rf $(OutputDir)
program: cleanTex
	rm -rf $(PdfDir)
