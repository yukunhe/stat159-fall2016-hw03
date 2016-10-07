all: eda-output.txt regression.RData report.pdf

report.pdf: report/report.Rmd regression.RData images/scatterplot-tv-sales.png
	Rscript -e "library(rmarkdown); render('report/report.Rmd', 'pdf_document')"

eda-output.txt: code/eda-script.R data/Advertising.csv
	Rscript code/eda-script.R

regression.RData: code/regression-script.R data/Advertising.csv
	Rscript code/regression-script.R

data:
	data/curl -O http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv

clean:
	rm -f report/report.pdf 
