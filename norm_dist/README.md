## About `Simulate Normal Distribution`

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
shiny::runGitHub("shiny-apps", "paternogbc", subdir = "norm_dist")
```

![](https://raw.githubusercontent.com/paternogbc/shiny-apps/master/norm_dist/img/app.png) ### updte to the correct figure


## Want to help?
If you find any problem, bug or typo or if you want to contribute with code, please report [here](https://github.com/paternogbc/shiny-apps/issues/new).

## License
This software is Open Source and is under the public license [GPL-3.0](http://www.gnu.org/licenses/gpl-3.0.en.html)

![logo](https://raw.githubusercontent.com/paternogbc/SSregression/master/www/logo.png) 

_The OSI logo trademark is the trademark of [Open Source Initiative](http://opensource.org/)_

## Author
Gustavo Paterno | paternogc@gmail.com

## Credit

This application was developed with [shiny](http://shiny.rstudio.com/) in 
[R studio](https://www.rstudio.com/).

