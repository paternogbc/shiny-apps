## About `Simulate Distributions`

# Need to include a figure (app look)

This interactive application allows you to explore the behaviour of [normal distribution](https://en.wikipedia.org/wiki/Normal_distribution) with different __sample size__, __population mean__ and __population satandard deviation__. Change one of the parameters to see what happens.

## Run this application on R Studio

Before you run, install the following R packages:

```{r} 
install.packages(shiny)
install.packages(shinydashboard)
install.packages(ggplot2)
```

To run this application localy, simple paste the following code on `R` console: 
```{r} 
 shiny::runGitHub("shiny-norm-dist", "paternogbc")
```

![](http://i.imgur.com/d6i4LGy.png) ### updte to the correct figure


## Want to help?
Fork this repo and create a pull request. Please, report bugs [here](https://github.com/paternogbc/shiny-norm-dist/issues).


## License
This software is Open Source and is under the public license [GPL-3.0](http://www.gnu.org/licenses/gpl-3.0.en.html)

![logo](https://raw.githubusercontent.com/paternogbc/SSregression/master/www/logo.png) 

_The OSI logo trademark is the trademark of [Open Source Initiative](http://opensource.org/)_

## Author
Gustavo Paterno | paternogc@gmail.com

## Credit

This application was developed with [shiny](http://shiny.rstudio.com/) in 
[R studio](https://www.rstudio.com/).
