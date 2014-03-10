##' Load prepared EB from RData
##'
##'
##' @return an environment containing the loaded data
##' @export
loadPreparedData <- function(){
    env <- new.env()
    with(env, data(commonEbData))
    with(env, data(instSatisData))
    return(env)
}

##' Load prepared EB from RData
##'
##'
##' @return data.frames for inst satisfaction stuff
##' @docType data
##' @name commonEbData
##' @export
NULL

##' Load prepared EB from RData
##'
##'
##' @return data.frames for inst satisfaction stuff
##' @docType data
##' @name instSatisData
##' @export
NULL
