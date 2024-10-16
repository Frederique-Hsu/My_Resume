# File name		: Makefile
# Description	: This script is used to build the project "My_Resume", generate the PDFs.
# Creator		: Frederique Hsu
# Date			: Wed.	16 Oct. 2024
#
#


# Build options
LATEXMK_OPT = -time -file-line-error -halt-on-error -interaction=nonstopmode

.PHONY : all cleanall

all : 简历.pdf CV.pdf


CV.pdf : CV.tex
	@latexmk $(LATEXMK_OPT) $<
	
简历.pdf : 简历.tex
	@latexmk ${LATEXMK_OPT} $<
	
cleanall :
	@latexmk -C -verbose CV.pdf 2> /dev/null
	@latexmk -C -verbose 简历.pdf 2> /dev/null
