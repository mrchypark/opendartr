#' Corps Code on Opendart
#'
#' Look up airline names from their carrier codes.
#'
#' @source <https://opendart.fss.or.kr/api/corpCode.xml>
#' @format [tibble][tibble::tibble-package]
#' \describe{
#' \item{corp_name}{character of Corporation name.}
#' \item{corp_code}{8 number code(but character type) of Corporation code using on opendart api.}
#' \item{stock_code}{6 number stock code(but character type) of Corporation.}
#' \item{modify_date}{Date when data updated.}
#' }
#' @examples
#'   opdr_code
"opdr_code"
