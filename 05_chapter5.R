eval(1)
eval(x)
eval(x <- 1)
x
eval(x)
identical(eval(x), 1)

typeof(x)
typeof(quote(x)) # symbol
substitute(quote(x)) %>% typeof() # language
substitute(x) %>% typeof() # symbol
quote(x) %>% typeof() # symbol
deparse(substitute(x)) %>% typeof() # character
deparse(substitute(quote(x))) %>% typeof() # character
# つまり，deparseは与えられたsymbolをcharacterで返す。

?jitter
c(1:10) %>% jitter


expr1 <- quote(y - mean(y))
expr1 # language
expr1 %>% str
expr1[[1]];expr1[[2]];expr1[[3]]
ee <- as.list(expr1)

callRnorm <- quote(rnorm(n, mean = 3, sd = 1))
as.list(callRnorm)
n <- 10
eval(callRnorm)

library(codetools)
walkCode(ee)
makeCodeWalker()

library(XRexample)

