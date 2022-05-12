library(webdriver)
library(XML)

## starting the headless browser
my.browser = run_phantomjs()
my.browser


# Opening a session and accessing the URL
my.url="https://www.govinfo.gov/app/collection/chrg/"
my.session = Session$new(port= my.browser$port)

my.session$go(my.url)


# Looking around the page
my.session$

## verifying I arrived at the URL
my.session$getUrl()
my.session$getTitle()

## Taking screenshots
## Very useful to check you're navigating right
my.session$takeScreenshot()

## Navigating on the page: 
## Locating the first menu item '117th Congress (2021 - 2022)'
my.target= my.session$findElement(xpath='/html/body/div[10]/div[6]/div/div[3]/div/div/div[1]/div[1]/div')

## Extracting text of that item
my.target$getText()

## Clicking on it to open the menu itself
my.target$click()

## checking whether the click worked (top menu should now be open)
my.session$takeScreenshot()

## closing the session
my.session$delete()