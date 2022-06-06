#Deliverable 2
library(dplyr) 
d <- data.frame(Suspension_Coil)
s <- d %>% summarize(mean=mean(PSI),median <- median(PSI),variance <- sd(PSI)^2,sd <- sd(PSI),.groups <- "keep")
s
l <- d %>% group_by(Manufacturing_Lot) %>% summarize(mean <- mean(PSI),median <- median(PSI),variance <- sd(PSI)^2,sd <- sd(PSI),.groups="keep")
print(s)
print(l) 


#Deliverable 3 
t1 <- t.test(d$PSI,mu=1500)

l1 <- subset(d, Manufacturing_Lot <- 'Lot1')
l2 <- subset(d, Manufacturing_Lot <- 'Lot2') 
l3 <- l2 = subset(d, Manufacturing_Lot <- 'Lot3')

tl1 <- t.test(l1$PSI,mu=1500)
tl2 <- t.test(l2$PSI,mu=1500)
tl3 <- t.test(l3$PSI,mu=1500)
print(t1)
print(tl1) 
print(tl2) 
print(tl3) 

