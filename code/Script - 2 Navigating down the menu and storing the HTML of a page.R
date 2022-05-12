library(webdriver)
library(XML)

## starting the headless browser
my.browser = run_phantomjs()
my.browser


# Opening a session and accessing the URL
my.url="https://www.govinfo.gov/app/collection/chrg/"
my.session = Session$new(port= my.browser$port)

my.session$go(my.url)


## Navigating on the page: 
## Locating the first menu item '117th Congress (2021 - 2022)'
my.target= my.session$findElement(xpath='/html/body/div[10]/div[6]/div/div[3]/div/div/div[1]/div[1]/div')

## Clicking on it to open the menu itself
my.target$click()

## checking whether the click worked (top menu should now be open)
my.session$takeScreenshot()

## (1) Locating the first menu item '117th Congress (2021 - 2022)'
my.target= my.session$findElement(xpath='/html/body/div[10]/div[6]/div/div[3]/div/div/div[1]/div[1]/div')
my.target$getText() ## Seeing whether I got it

## Clicking on it to open the menu itself
my.target$click()


## (2) Locating the first menu item 'House Hearings'
my.target= my.session$findElement(xpath='/html/body/div[10]/div[6]/div/div[3]/div/div/div[1]/div[2]/div/div[1]/div[1]/div/span')
my.target$getText() ## Seeing whether I got it

## Clicking on it to open the menu itself
my.target$click()


## (3) Locating the first menu item 'Committee on Education and Labor'
my.target= my.session$findElement(xpath='/html/body/div[10]/div[6]/div/div[3]/div/div/div[1]/div[2]/div/div[1]/div[2]/div/div[4]/div[1]/div/span')
my.target$getText() ## Seeing whether I got it

## Clicking on it to open the menu itself
my.target$click()



## (4) Locating the first DETAILS button for the hearing on ' Clearing the Air: Science-Based Strategies to Protect Workers from Covid-19 Infections'
my.target= my.session$findElement(xpath='/html/body/div[10]/div[6]/div/div[3]/div/div/div[1]/div[2]/div/div[1]/div[2]/div/div[4]/div[2]/div/table[1]/tbody/tr/td[2]/div/a[3]')
my.target$getText() ## Seeing whether I got it

## Clicking on it to open the menu itself
my.target$click()
my.session$getUrl() ## did we get to the right location?



## extracting the full HTML file into the 'data' folder
html = my.session$getSource()

writeLines(text = html, con = 'data/my first page.html')


## closing the session
my.session$delete()



