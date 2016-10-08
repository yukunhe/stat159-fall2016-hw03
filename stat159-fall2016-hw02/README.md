## Stat159 Fall2016 Homework02

### Author

Yukun He 
24644819
Statistics, B.A., UC Berkeley

### Introduction

The purpose of the homework is to apply computational toolkit to reproduce a simple regression analysis in
section 3.1 - Simple Linear Regression of the book “An Introduction to Statistical Learning” by Gareth James,
Deniela Witten, Trevor Hastie and Robert Tibshirani. In this report, I used the data set for advertising to
perform simple linear regression of Sales on TV budget. I will introduce the steps and tools to work on the
reproducible workflow in the report.

### Structure

~~~
stat159-fall2016-hw02/
    .gitignore
    README.md
    Makefile
    data/
      README.md
      Advertising.csv
      eda-output.txt
      regression.RData
    code/
      README.md
      eda-script.R
      regression-script.R
    images/
        histogram-sales.png
        histogram-sales.pdf
        histogram-tv.png
        histogram-tv.pdf
        scatterplot-tv-sales.png
        scatterplot-tv-sales.pdf
    report/
        report.Rmd
        report.pdf
~~~

### Creative Commons

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.

