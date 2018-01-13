
<br><br> **Status**

[![Travis-CI Build Status](https://travis-ci.org/petermeissner/r6extended.svg?branch=master)](https://travis-ci.org/petermeissner/r6extended) [![codecov](https://codecov.io/gh/petermeissner/r6extended/branch/master/graph/badge.svg)](https://codecov.io/gh/petermeissner/r6extended/tree/master/R) [![CRAN version](http://www.r-pkg.org/badges/version/r6extended)](https://cran.r-project.org/package=r6extended)

Extension for 'R6' Base Class
=============================

<br><br> **Version**

0.1.1 <br> 2018-01-13

<br><br> **Description**

A package that adds some useful methods and data fields to the bare bones 'R6' class provided by the 'R6' package - ls-method, hashes, warning- and message-method, general get-method and a debug-method that assigns self and private to the glbal environment.

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
    ## [1] "21a6f7949674d411"
    ## 
    ## $hashed
    ## [1] "d8f0ea54a405fd40"
    ## 
    ## $hashes
    ## [1] "be5d004a2532ca93"
    ## 
    ## $clone
    ## [1] "ce34640aec250b6b"
    ## 
    ## $debug
    ## [1] "98376c9a2ffec01b"
    ## 
    ## $get
    ## [1] "70fe789f7d67e0e1"
    ## 
    ## $hash_do
    ## [1] "74dac0de02bd7c70"
    ## 
    ## $hash_get
    ## [1] "d19a97ff0e5e600e"
    ## 
    ## $ls
    ## [1] "582b459536b42b4a"
    ## 
    ## $message
    ## [1] "331e1d0773f2f519"
    ## 
    ## $warning
    ## [1] "748aeda6db227735"
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
