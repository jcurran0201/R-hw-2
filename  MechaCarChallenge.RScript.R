library(dplyr) 
# dependent var = mpg  
# independent var = Everything else 
d <- data.frame(MechaCar_mpg)
f <- lm(d$mpg ~ ., d) 
summary(f)



