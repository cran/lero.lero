
lero.lero = function(){

  html = readLines("http://www.lerolero.com/", encoding = "UTF-8")

  q = html[grepl("<blockquote", html)]

  return(stringr::str_match(q, ">(.*)<")[1,2])

}
