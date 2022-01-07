# load the libraries
library(RSelenium)
library(rvest)
library(tidyverse)
library(seleniumPipes)
remDr <- remoteDr(browserName = "chrome", port = 4445L)

# https://stackoverflow.com/questions/62616950/is-rseleniumremdropen-actually-suppose-to-open-a-browser-window
# actually open a vnc browser window

class(remDr)
remDr

# your password here
pw <- "*************"

# your email here
user <- "xy@z.com"

remDr %>% go("https://www.udemy.com/")
remDr %>%  findElement("class", "header--gap-auth-button--7KoL0") %>% elementClick
remDr %>% findElement("class", "cancel-link") %>% elementClick
pwInput <- remDr %>% findElement("name", "password") 
pwInput %>% elementSendKeys(pw) 
usInput <- remDr %>% findElement("name", "email") %>%
usInput %>% elementSendKeys(user) 
pwInput %>% elementSendKeys(key="enter")

myCourseId <- remDr %>% findElement("id", "my-courses udemy")  %>% getElementAttribute("id")

print(myCourseId)
# out: my-courses udemy

remDr %>% deleteSession

zuschuss71Fan&
# 
# remDr %>% getPageSource() 
# 
  #remDr$open()
  # https://rpubs.com/johndharrison/seleniumPipes-basic
  # https://www.rdocumentation.org/packages/seleniumPipes/versions/0.3.7
  
  # https://rpubs.com/johndharrison/seleniumPipes-basic
  # get a client instance
  # https://rpubs.com/johndharrison/seleniumPipes-basic
  # https://www.rdocumentation.org/packages/seleniumPipes/versions/0.3.7
  # remDr <- remoteDr(browserName = "chrome", port = 4445L)
  # shell('sudo docker run -d -p 4445:4444 selenium/standalone-firefox')
  # sudo docker run -d -p 4446:4444 -p 5901:5900 selenium/standalone-chrome-debug:2.53.0
# then connect to chrome and use seleniumPipes

#rD <- rsDriver(browser="firefox", port=4545L, verbose=F)
#remDr <- remoteDriver(port = 4445L)
#remDr <- remoteDr(port = 4446L)
# 
# remDr %>% findElement("name", "email")
# cancelLink <- NULL
# # maybe we logged in previously so lets go to the login form
# cancelLink <- remDr %>% findElement("class", "cancel-link")
# 
# if(is_null(cancelLink)){
#   remDr %>% findElement("name", "email")
#     
# } else {
#   cancelLink %>% elementClick
# }
# 
# 
# remDr %>% findElement("name", "email") %>% 
#   elementSendKeys("eric.vanlessen@live.de")
# 
# 
#   # elementSendKeys("zuschuss71Fan&", key="enter") 
# remDr %>% findElement("class", "udlite-avatar")
# ?findElement
# # https://stackoverflow.com/questions/43402237/r-waiting-for-page-to-load-in-rselenium-with-phantomjs
# wetest <- function(sleepmin,sleepmax, webElemtest){
#   remDr <- get("remDr",envir=globalenv())
#   while(is.null(webElemtest)){
#     webElemtest <- tryCatch({remDr$findElement("class", "udlite-avatar")},
#                             error = function(e){NULL})
#     #loop until element with name <value> is found in <webpage url>
#   }
#   randsleep <- sample(seq(sleepmin, sleepmax, by = 0.001), 1)
#   Sys.sleep(randsleep)
# }
# 
# webElemtest <-NULL
# wetest(sleepmin=.5,sleepmax=1, webElemtest)
# 
# # you are logged in
# webElemtest
# 
# remDr$deleteSession
# 
# 
# 
# 
# remDr$navigate("http://www.google.com")
# webElem <- remDr$findElement(using = "css", "[name = 'q']")
# webElem
# webElem$sendKeysToElement(list("eric.vanlessen@live.de", "\uE007"))
# webElem <- remDr$findElement(using = "name", value = "q")
# webElem$getElementAttribute("name")
# webElem$getElementAttribute("class")
# webElem$getElementAttribute("id")
# webElem <- remDr$findElement(using = "id", value = "lst-ib")
# webElem$getElementAttribute("name")
# webElem$getElementAttribute("class")
# webElem$getElementAttribute("id")
# webElem <- remDr$findElement(using = "class", "gsfi")
# webElem$getElementAttribute("class")
# 
# # send text to email input
# # navigate to the udemy page
# remDr$navigate("https://www.udemy.com")
# remDr$getCurrentUrl()
# webElem <- remDr$findElement(using = "name", value = "q")
# webElem$getElementAttribute("name")
# webElem$getElementAttribute("class")
# webElem$getElementAttribute("id")
# webElem <- remDr$findElement(using = "id", value = "onetrust-accept-btn-handler")
# webElem$getElementAttribute("name")
# webElem$getElementAttribute("class")
# webElem$getElementAttribute("id")
# webElem <- remDr$findElement(using = "class", "udemy")
# webElem$getElementAttribute("class")


# send text to password input
#webElem <- remDr$findElement("id", "id_password")
#webElem$sendKeysToElement(list("zuschuss71Fan&"))

# create a list to hold the titles for each page
#titles <- list()

# loop over the pages
#for (index in (1:41)) {
  # navigate to the udemy titles page (repeat)
#  indexStr <- s.character(index)
#  url <- paste("https://www.udemy.com/home/my-courses/learning/?p=",indexStr,"&sort=title")
#  remDr$navigate(url)
  
  # append titles 
#  titlesTmp <- remDr$findElements("class", "details__name")
  
  # read out html inner text to have just the titles
  #... 
  
  # append the titles
#  titles.append(titlesTmp) 
#}


# print the titles
#print(titles)