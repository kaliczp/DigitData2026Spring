## Trend idősorra
Turk.df <- data.frame(Ido, ta = Turk$ta)
lm(ta ~ Ido, Turk.df)
