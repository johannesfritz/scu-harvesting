library(webdriver)
library(XML)

## starting the headless browser
my.browser = run_phantomjs()
my.browser


# Opening a session and accessing the URL
my.url="https://www.govinfo.gov/app/collection/chrg/"
my.session = Session$new(port= my.browser$port)

my.session$go(my.url)
Sys.sleep(2)

## Navigating to the list of House Committees

my.target= my.session$findElement(xpath='/html/body/div[10]/div[6]/div/div[3]/div/div/div[1]/div[1]/div')
my.target$click()
Sys.sleep(.5)

my.target= my.session$findElement(xpath='/html/body/div[10]/div[6]/div/div[3]/div/div/div[1]/div[2]/div/div[1]/div[1]/div/span')
my.target$click()
Sys.sleep(.5)


## Find the common root for your XPaths and use it to get all committee names at once

common.root='' # paste solution here

all.committees=my.session$findElements(xpath=common.root) # should give you a list with 19 elements


## Now add the for loop printing the full list of House Committee names by looping through the elemtns

for(){ ## <-- add variable you are looping over and its dimension
  
  print(all.committees$getText()) ## <-- change to respond to the variable you are looping over
  
}



## closing the session
my.session$delete()