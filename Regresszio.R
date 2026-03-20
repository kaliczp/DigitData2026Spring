## Trend idősorra
Turk.df <- data.frame(Ido, ta = Turk$ta)
Turk.lm <- lm(ta ~ Ido, Turk.df)
summary(Turk.lm)
