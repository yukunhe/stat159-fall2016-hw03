scripts = code/scripts

# Set PHONY targets
.PHONY: data tests eda regression report clean all

# Set all targets
all: sessionInfo data eda regression report

# Set sessionInfo target
sessionInfo: code/scripts/session-info-script.R
	Rscript code/scripts/session-info-script.R

# Set data target
data :
	curl -o data/Advertising.csv "http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv"

# Set eda target
eda: data $(scripts)/eda-script.R
	Rscript $(scripts)/eda-script.R

# Set regression target
regression: $(scripts)/regression-script.R
	Rscript $(scripts)/regression-script.R

# Set report target
report: report/report.Rmd 
	Rscript -e "library(rmarkdown); render('report/report.Rmd', 'pdf_document')"

# Run tests
tests: 
	Rscript code/test-that.R

# Run function
function: code/functions/regression-functions.R
	Rscript code/functions/regression-functions.R

# Set clean target
clean:
	rm -f report/report.pdf
