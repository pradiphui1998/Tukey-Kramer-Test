## Defining groups
Group1 <- c(19.2,27.7,24.8,20.8,23.6,28.7,22.9)
Group2 <- c(28.5,25.8,22.7,28.7,28.5,25.7)
Group3 <- c(19.3,17.3,19.8,18.7,14.3)
Group4 <- c(22.1,24.2,21.2,16.8)
## Creating data frame
Data <- data.frame(
  Y=c(Group1, Group2, Group3, Group4),
  Group =factor(rep(c("Group1", "Group2", "Group3", "Group4"), times=c(length(Group1), length(Group2), length(Group3), length(Group4))))
)
## Fitting anova model
model <- aov(Y~Group, data=Data)
## Getting ANOVA table
anova(model)


## Multiple comparision test by Tukey HSD
TukeyHSD(aov(Y~Group, data=Data),alpha=0.05)
