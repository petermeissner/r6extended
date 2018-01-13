
<br><br> **Status**

[![Travis-CI Build Status](https://travis-ci.org/petermeissner/r6extended.svg?branch=master)](https://travis-ci.org/petermeissner/r6extended) [![codecov](https://codecov.io/gh/petermeissner/r6extended/branch/master/graph/badge.svg)](https://codecov.io/gh/petermeissner/r6extended/tree/master/R) [![CRAN version](http://www.r-pkg.org/badges/version/r6extended)](https://cran.r-project.org/package=r6extended)

Extension for 'R6' base Classes
===============================

<br><br> **Version**

0.1.1 <br> 2018-01-13

<br><br> **Description**

A package that adds some useful methods and data fields to the bare bones 'R6' class provided by the 'R6' package.

<br><br> **License**

MIT + file LICENSE <br>Peter Meissner \[aut, cre\]

<br><br> **Citation**

To cite package 'r6extended' in publications use:

Peter Meissner (2018). r6extended: Extension for 'R6' base Classes. R package version 0.1.1. <https://github.com/petermeissner/r6extended>

A BibTeX entry for LaTeX users is

@Manual{, title = {r6extended: Extension for 'R6' base Classes}, author = {Peter Meissner}, year = {2018}, note = {R package version 0.1.1}, url = {<https://github.com/petermeissner/r6extended>}, }

<br><br> **BibTex for citing**

<code style="white-space:normal;"> @Manual{, title = {r6extended: Extension for 'R6' base Classes}, author = {Peter Meissner}, year = {2018}, note = {R package version 0.1.1}, url = {<https://github.com/petermeissner/r6extended>}, } </code>

<br><br> **Installation**

(stable) development version

``` r
install.packages("r6extended",   repos="https://petermeissner.github.io/drat")    
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
    ## [1] "2458a1c0a48c95e4"
    ## 
    ## $hashed
    ## [1] "7e94c1969b26af7b"
    ## 
    ## $hashes
    ## [1] "9a00a30fd3c93d36"
    ## 
    ## $clone
    ## [1] "8d0dfb5eb8e39136"
    ## 
    ## $debug
    ## [1] "b43cc3abe205fe2b"
    ## 
    ## $get
    ## [1] "cdc7ef75c6f4fc79"
    ## 
    ## $hash_do
    ## [1] "298f4eee3f74d1c8"
    ## 
    ## $hash_get
    ## [1] "b078c8b86741e26f"
    ## 
    ## $ls
    ## [1] "e017fb3f181d6a9d"
    ## 
    ## $message
    ## [1] "f595531aa218020b"
    ## 
    ## $warning
    ## [1] "406ef84005d1d8c3"
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
