OutputDir = ./out
PdfDir = ./docs
GHC = ghc -dynamic -outputdir $(OutputDir) -no-keep-hi-files
TEX = ptex2pdf -u -l -ot "-synctex=1 -interaction=nonstopmode -file-line-error-style -shell-escape"
# -output-directory $(PdfDir)

all: programs cleanTex
programs: fundamental

define compileTeX
	cd $(PdfDir)
	$(TEX) $(1)
	cd -
endef

define compileLHS
	$(GHC)             $(1).lhs
	$(call compileTeX, $(1).lhs)
	$(call compileTeX, $(1).lhs)
endef

fundamental: prepDir
	$(call compileLHS, Fundamental)

prepDir:
	mkdir -p $(OutputDir)
	mkdir -p $(PdfDir)

clean:; rm -rf $(OutputDir) $(PdfDir)
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
