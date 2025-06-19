
library(plumber)

apiexamen<-"
  #* @apiTitle Plumber Example API
  #* #* @apiDescription Plumber example description.
  #* #* @param msg The message to echo
  #* #* @get /echo

  function(Minutes) {
    minutos <- as.numeric(datos$Minutes)
    return(hist(datos$Minutes))
}"

writeLines(apiexamen,"plumber.R")
library(plumber)
r <- plumb("plumber.R")
r$run(port=8000)
