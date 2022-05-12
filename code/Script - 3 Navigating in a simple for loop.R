library(webdriver)
library(XML)

## starting the headless browser
my.browser = run_phantomjs()
my.browser


# Opening a session and accessing the URL
my.url="https://www.govinfo.gov/app/collection/chrg/"
my.session = Session$new(port= my.browser$port)

my.session$go(my.url)


## Navigating on the page: Same as in script 2 but now all in one go

i.want.to.click=c('/html/body/div[10]/div[6]/div/div[3]/div/div/div[1]/div[1]/div',
                  '/html/body/div[10]/div[6]/div/div[3]/div/div/div[1]/div[2]/div/div[1]/div[1]/div/span',
                  '/html/body/div[10]/div[6]/div/div[3]/div/div/div[1]/div[2]/div/div[1]/div[2]/div/div[4]/div[1]/div/span',
                  '/html/body/div[10]/div[6]/div/div[3]/div/div/div[1]/div[2]/div/div[1]/div[2]/div/div[4]/div[2]/div/table[1]/tbody/tr/td[2]/div/a[3]')

for(this.element in i.want.to.click){
  print(paste("Clicking on:",this.element))
  my.target= my.session$findElement(xpath=this.element)
  my.target$getText() ## Seeing whether I got it
  
  ## Clicking on it to open the menu itself
  my.target$click()
  Sys.sleep(.5) ## need a pause of .5s because else the browser can't reload as fast as we are clicking
  
}


## extracting the full HTML file into the 'data' folder
my.session$getTitle()
html = my.session$getSource()

writeLines(text = html, con = 'data/my first page.html')


## closing the session
my.session$delete()



