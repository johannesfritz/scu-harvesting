# Harvesting online data
## A short course at Santa Clara University
5/5/22, 5/12/22 by Johannes Fritz

### Resources
Please install the libraries 
* [webdriver](https://github.com/rstudio/webdriver) including phantomJS
```R
install.packages("webdriver")
library(webdriver)
install_phantomjs()
```
* [httr](https://cran.rstudio.com/web/packages/httr/index.html)
```R
install.packages("httr")
```
* [XML](https://cran.r-project.org/web/packages/XML/index.html)
```R
install.packages("XML")
```

### Teaching example
[U.S. Congressional Hearings](https://www.govinfo.gov/app/collection/chrg/)
