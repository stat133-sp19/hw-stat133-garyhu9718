
<!-- README.md is generated from README.Rmd. Please edit that file -->
Overview
--------

`"binomial"` is a minimal [R](http://www.r-project.org/) package that provides functions to simulate binomial distribution.

-   `bin_variable()` creates a binomial object (of class `"binvar"`)
-   `bin_mean()` calculate the mean of a binomial distribution
-   `bin_variance()` calculate the variance of a binomial distribution
-   `bin_skewness()` calculate the skeeness of a binomial distribution
-   `bin_mode()` calculate the mdoe of a binomial distribution
-   `bin_kurtosis()` calculate the kurtosis of a binomial distribution
-   `bin_distribution()` creates a binomial distribution object (of class `"bindis"`)
-   `bin_cumulative()` creates a binomial cumulative probability object (of class `"bincum"`)
-   `plot()` method for `"bindis"` and `"bindis"` objects to plot probability graphs
-   `summary` method for a `"binvar"` object to create a summary.

Motivation
----------

This package has been developed to illustrate statistic information

Installation
------------

Install the development version from GitHub via the package `"devtools"`:

``` r
# development version from GitHub:
#install.packages("binomial") 
# install "binomial" (without vignettes)
devtools::install_github("stat133-sp19/hw-stat133-garyhu9718/tree/master/workout3/binomial")
# install "binomial" (with vignettes)
devtools::install_github("stat133-sp19/hw-stat133-garyhu9718/tree/master/workout3/binomial", build_vignettes = TRUE)
```

Usage
-----

``` r
library(binomial)
#create binomial obeject
s1 = bin_variable(5,0.5)
s1
#> "Binomial variable"
#> 
#> Parameters
#> - number of trials: 5 
#> - prob of success: 0.5

#summarize the object
summary(s1)
#> "Binomial variable"
#> 
#> Parameters
#> - number of trials: 5 
#> - prob of success: 0.5 
#> 
#> -mean: 2.5 
#> -variance: 1.25 
#> -mode: 2 
#> -skewness: 0 
#> -kurtosis: -0.4

#calculate the basic statistic information
bin_mean(5,0.5)
#> [1] 2.5
bin_variance(5,0.5)
#> [1] 1.25
bin_mode(5,0.5)
#> [1] 2
bin_skewness(5,0.5)
#> [1] 0
bin_kurtosis(5,0.5)
#> [1] -0.4

#create a bindis object and plot it 
s2 = bin_distribution(5,0.5)
s2
#>   success probability
#> 1       0     0.03125
#> 2       1     0.15625
#> 3       2     0.31250
#> 4       3     0.31250
#> 5       4     0.15625
#> 6       5     0.03125
p1 = plot(s2)
```

![](README-unnamed-chunk-2-1.png)

``` r

#create a bincum object and plot it 
s3 = bin_cumulative(5,0.5)
s3
#>   success probability cumulative
#> 1       0     0.03125    0.03125
#> 2       1     0.15625    0.18750
#> 3       2     0.31250    0.50000
#> 4       3     0.31250    0.81250
#> 5       4     0.15625    0.96875
#> 6       5     0.03125    1.00000
p2 = plot(s3)
```

![](README-unnamed-chunk-2-2.png)
