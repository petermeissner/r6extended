
<br><br> **Status**

Extension for 'R6' base Classes
===============================

<br><br> **Version**

0.1.0 <br> 2016-09-03

<br><br> **Description**

A package that adds some useful methods and data fields to the bare bones 'R6' class provided by the 'R6' package.

<br><br> **License**

MIT + file LICENSE <br>Peter Meissner \[aut, cre\]

<br><br> **Citation**

To cite package 'r6extended' in publications use:

Peter Meissner (2016). r6extended: Extension for 'R6' base Classes. R package version 0.1.0. <https://github.com/petermeissner/r6extended>

A BibTeX entry for LaTeX users is

@Manual{, title = {r6extended: Extension for 'R6' base Classes}, author = {Peter Meissner}, year = {2016}, note = {R package version 0.1.0}, url = {<https://github.com/petermeissner/r6extended>}, }

<br><br> **BibTex for citing**

<code style="white-space:normal;"> @Manual{, title = {r6extended: Extension for 'R6' base Classes}, author = {Peter Meissner}, year = {2016}, note = {R package version 0.1.0}, url = {<https://github.com/petermeissner/r6extended>}, } </code>

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
    ## [1] "4d0a82b301b2c0bc"
    ## 
    ## $hashed
    ## [1] "a711ef1dae6683aa"
    ## 
    ## $hashes
    ## [1] "05ba9082acdc7f51"
    ## 
    ## $clone
    ## [1] "dc64f26d2331b344"
    ## 
    ## $debug
    ## [1] "30d5b5a92de88c49"
    ## 
    ## $get
    ## [1] "29d147905661ecc4"
    ## 
    ## $hash_do
    ## [1] "6916ad4b7eb8ed2d"
    ## 
    ## $hash_get
    ## [1] "dc9f1a00e8d6c487"
    ## 
    ## $ls
    ## [1] "d4d6c9fea7054c10"
    ## 
    ## $message
    ## [1] "244fc2b7b6f39cee"
    ## 
    ## $warning
    ## [1] "d82885c9abf6a216"
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
