## Stat159-fall2016-hw03

### Introduction
The purpose of the report is to extend the scope of the previous one. In this report, we want to carry out a multiple linear regression with predictor variables TV, Radio, Newspaper, and the response variable Sales. We want to reproduce the analysis in section 3.2: Multiple Linear Regression of the book "An Introduction to Statistical Learning" by Gareth James, Deniela Witten, Trevor Hastie and Robert Tibshirani. 

### Author
Yukun He

### Structure

~~~
stat159-fall2016-hw03/
    .gitignore
    README.md
    LICENSE
    Makefile
    session-info.txt                     # produced by session-info-script.R
    code/
      README.md
      test-that.R
      functions/
        regression-functions.R
      scripts/
        eda-script.R
        regression-script.R
        session-info-script.R
      tests/
        test-regression.R
    data/
      README.md
      Advertising.csv
      eda-output.txt                      # produced by eda-script.R
      correlation-matrix.RData            # produced by eda-script.R
      regression.RData                    # produced by regression-script.R
    images/
        histogram-sales.png                # produced by eda-script.R
        histogram-tv.png                   # produced by eda-script.R
        histogram-radio.png                # produced by eda-script.R
        histogram-newspaper.png            # produced by eda-script.R
        scatterplot-matrix.png             # produced by eda-script.R
        scatterplot-tv-sales.png           # produced by regression-script.R
        scatterplot-radio-sales.png        # produced by regression-script.R
        scatterplot-newspaper-sales.png    # produced by regression-script.R
        residual-plot.png                  # produced by regression-script.R
        scale-location-plot.png            # produced by regression-script.R
        normal-qq-plot.png                 # produced by regression-script.R
    report/
        report.Rmd
        report.pdf
~~~

###Reproducing the project
Run make in the terminal and get the report.pdf.

###License:
<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
