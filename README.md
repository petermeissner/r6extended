
<br><br> **Status**

[![Travis-CI Build Status](https://travis-ci.org/petermeissner/r6extended.svg?branch=master)](https://travis-ci.org/petermeissner/r6extended) [![codecov](https://codecov.io/gh/petermeissner/r6extended/branch/master/graph/badge.svg)](https://codecov.io/gh/petermeissner/r6extended/tree/master/R) [![CRAN version](http://www.r-pkg.org/badges/version/r6extended)](https://cran.r-project.org/package=r6extended)

Extension for 'R6' Base Class
=============================

<br><br> **Version**

0.1.1 <br> 2018-01-13

<br><br> **Description**

A package that adds some useful methods and data fields to the bare bones 'R6' class provided by the 'R6' package - ls-method, hashes, warning- and message-method, general get-method and a debug-method that assigns self and private to the global environment.

<br><br> **License**

MIT + file LICENSE <br>Peter Meissner \[aut, cre\]

<br><br> **Citation**

To cite package 'r6extended' in publications use:

Peter Meissner (2018). r6extended: Extension for 'R6' Base Class. R package version 0.1.1. <https://github.com/petermeissner/r6extended>

A BibTeX entry for LaTeX users is

@Manual{, title = {r6extended: Extension for 'R6' Base Class}, author = {Peter Meissner}, year = {2018}, note = {R package version 0.1.1}, url = {<https://github.com/petermeissner/r6extended>}, }

<br><br> **BibTex for citing**

<code style="white-space:normal;"> @Manual{, title = {r6extended: Extension for 'R6' Base Class}, author = {Peter Meissner}, year = {2018}, note = {R package version 0.1.1}, url = {<https://github.com/petermeissner/r6extended>}, } </code>

<br><br> **Installation**

stable version from CRAN

``` r
install.packages("r6extended")
```

``` r
devtools::install_github("petermeissner/r6extended")
```

<br><br> **Example Usage**

<br><br> ***... starting up ...***

``` r
library(r6extended)
```

***new instance***

``` r
ext <- r6extended$new()
```

***whats there?***

``` r
ext$ls()
```

    ##        name   where    class
    ## 1      hash private function
    ## 2    hashed private function
    ## 3    hashes private     list
    ## 4     clone    self function
    ## 5     debug    self function
    ## 6       get    self function
    ## 7   hash_do    self function
    ## 8  hash_get    self function
    ## 9        ls    self function
    ## 10  message    self function
    ## 12  warning    self function
    ## 11  options    self     list

***getting things (wherever they are, also private stuff)***

``` r
ext$get("options")
```

    ## $verbose
    ## [1] TRUE
    ## 
    ## $warning
    ## [1] TRUE

``` r
ext$get("hashes")
```

    ## list()

***messages***

``` r
ext$message("Please note ...")
```

    ## r6extended : Please note ...

``` r
ext$options$verbose <- FALSE
ext$message("Please note ...")
```

***build in hashing***

``` r
ext$hash_do()
ext$hash_get("options")
```

    ## [1] "feb524178c59d96d"

***debugging***

``` r
ext$debug()

private$hash()
```

    ## $hash
    ## [1] "17ffb32ae9c76ae5"
    ## 
    ## $hashed
    ## [1] "ccea09b758d96a29"
    ## 
    ## $hashes
    ## [1] "599528a08e001b47"
    ## 
    ## $clone
    ## [1] "3152289c186555e4"
    ## 
    ## $debug
    ## [1] "5c0b2addb8488d81"
    ## 
    ## $get
    ## [1] "61ad996a97ef1a41"
    ## 
    ## $hash_do
    ## [1] "c15c34743236a74b"
    ## 
    ## $hash_get
    ## [1] "8ac5e4f762382693"
    ## 
    ## $ls
    ## [1] "75749a4833c55a75"
    ## 
    ## $message
    ## [1] "3d8cc32f2770501a"
    ## 
    ## $warning
    ## [1] "7aff90c92378a451"
    ## 
    ## $options
    ## [1] "feb524178c59d96d"

``` r
self$ls()
```

    ##        name   where    class
    ## 1      hash private function
    ## 2    hashed private function
    ## 3    hashes private     list
    ## 4     clone    self function
    ## 5     debug    self function
    ## 6       get    self function
    ## 7   hash_do    self function
    ## 8  hash_get    self function
    ## 9        ls    self function
    ## 10  message    self function
    ## 12  warning    self function
    ## 11  options    self     list
