
<!-- README.md is generated from README.Rmd. Please edit that file -->

# opendartr

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of opendartr is to …

## Installation

### github

``` r
install.packages("remotes")
remotes::install_github("mrchypark/opendartr")
```

### cran

## NOT YET

You can install the released version of opendartr from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("opendartr")
```

## Example

### corp code

``` r
library(opendartr)
opdr_code
#> # A tibble: 81,135 x 4
#>    corp_name                          corp_code stock_code modify_date
#>    <chr>                              <chr>     <chr>      <date>     
#>  1 다코                               00434003  ""         2017-06-30 
#>  2 일산약품                           00434456  ""         2017-06-30 
#>  3 굿앤엘에스                         00430964  ""         2017-06-30 
#>  4 한라판지                           00432403  ""         2017-06-30 
#>  5 크레디피아제이십오차유동화전문회사 00388953  ""         2017-06-30 
#>  6 연방건설산업                       00179984  ""         2017-06-30 
#>  7 브룩스피알아이오토메이션잉크       00420143  ""         2017-06-30 
#>  8 매경아이비아이                     00401111  ""         2017-06-30 
#>  9 캐드뱅크                           00435534  ""         2017-06-30 
#> 10 엠와이오피삼차유동화전문유한회사   00430186  ""         2017-06-30 
#> # ... with 81,125 more rows
```
