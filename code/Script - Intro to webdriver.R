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

## verifying I arrived at the URL
my.session$getUrl()
my.session$getTitle()

## Taking screenshots
## Very useful to check you're navigating right
my.session$takeScreenshot()

## Navigating on the page
my.target= my.session$findElement(xpath='//*[@id="aboutDescription"]/p')

## Extracting text (works reasonably well)
my.target$getText()
  

## extracting the full HTML file
html = my.session$getSource()

page=read_html(scrape.page)
html=htmlParse(html, asText=T)
writeLines(text = html, con = 'data/my first page.html')






