# How to handle stata files:
  
  
#  https://cran.r-project.org/web/packages/RStata/README.html

# In an r chunk use: 
  
# stata( )
# stata(“some stata command”)


# Or use:

# install_github("hemken/Statamarkdown")


# library(Statamarkdown)
# ```{stata}

# -- Stata code here --
  
# ```
# https://www.ssc.wisc.edu/~hemken/Stataworkshops/Stata%20and%20R%20Markdown/StataMarkdown


 ```{r, echo=FALSE, message=FALSE}
require(knitr)
statapath <- "/Applications/Stata/StataSE.app/Contents/MacOS/stata-se"
opts_chunk$set(engine="stata", engine.path=statapath, comment="")
```

