#' Browse the dplyr documentation
#'
#' @param x Character(1). Documentation file name.
#'
#' @return Open browser.
#' @export
#'
browse_dplyr <- function(x = NULL) {
    path <- system.file(
        "doc", "dplyr.html", package = "dplyr", mustWork = TRUE
    )
    if (!length(x)) {
        path <- sub("dplyr\\.html", "", path)
        return(list.files(path = path, pattern = "*html"))
    } else {
        path <- system.file(
            "doc", paste0(x, ".html"), package = "dplyr", mustWork = TRUE
        )
        utils::browseURL(paste("file://", path, sep = ""))
    }
}

#' Browse the tidyr documentation
#'
#' @param x Character(1). Documentation file name.
#'
#' @return Open browser.
#' @export
#'
browse_tidyr <- function(x = NULL) {
    path <- system.file(
        "doc", "tidy-data.html", package = "tidyr", mustWork = TRUE
    )
    if (!length(x)) {
        path <- sub("tidy-data\\.html", "", path)
        return(list.files(path = path, pattern = "*html"))
    } else {
        path <- system.file(
            "doc", paste0(x, ".html"), package = "tidyr", mustWork = TRUE
        )
        utils::browseURL(paste("file://", path, sep = ""))
    }
}

#' Browse the magrittr documentation
#'
#' @param x Character(1). Documentation file name.
#'
#' @return Open browser.
#' @export
#'
browse_magrittr <- function(x = NULL) {
    path <- system.file(
        "doc", "magrittr.html", package = "magrittr", mustWork = TRUE
    )
    if (!length(x)) {
        path <- sub("magrittr\\.html", "", path)
        return(list.files(path = path, pattern = "*html"))
    } else {
        path <- system.file(
            "doc", paste0(x, ".html"), package = "magrittr", mustWork = TRUE
        )
        utils::browseURL(paste("file://", path, sep = ""))
    }
}
