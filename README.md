# bivariate_analysis

## Introduction

We use free and open source software for analysis: RStudio and GeoDa. In addition, the packages used were gstats and SpatialPack. LISA assists in defining the degree of association of two variables spatially distributed and georeferenced, as this correlation index considers n locations of the data. The cross-semivariogram estimates the distance of spatial dependence between two variables based on the semivariance function, enabling the estimation of a given variable Z2 based on the values of both variables, expressing the positive or negative correlation between them. The co-dispersion coefficient was employed to validate this correlation, corroborating the existence of correlation through a thorough analysis of a set of georeferenced data.

## Requirements

### R Packages
* gstats
* SpatialPack

### Softwares
* R (https://cran.r-project.org/mirrors.html)
* RStudio - Open Source License (https://rstudio.com/products/rstudio/download/)
* GeoDa (https://geodacenter.github.io/download.html)

## Scripts
* scripts/cross-variogram_R.R: application of the cross semivariogram
* scripts/co-dispersion.R: application of the co-dispersion coefficient

## Detailed scripts

### In script "cross-variogram_R.R":
1. "read_table" function: enter with the two different databases on the different lines, in which the two variables are distributed by random points, related to a geographic coordinate.
2. "gstat" functioin: inform of "id" as input variables.

More details can be found in the gstat package information: https://cran.r-project.org/web/packages/gstat/vignettes/gstat.pdf

### In script "co-dispersion.R":
1. Insert the file with the variables.
2. Defining x and y variables from the dataset.

## LICENSES
GPL3.0

## How to contact us?
* paulogamero94@gmail.com
* miguel.opazo@unioeste.br
* fernandadebastiani@gmail.com
* jerry.johann@hotmail.com
