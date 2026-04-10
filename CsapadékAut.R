## Első állomás teszt beolvasás
rawinput <- "HABP_1RD_20020101_20251231_45604.csv"
raw <- read.table(rawinput, header = TRUE, sep = ";")
## Adat indexelés
raw$r
raw[1,"r"]
raw[1:7, 3]
## Ábrázolás
plot(raw$r)
identify(raw$r)
raw[c(199,5774,6004), 3]
raw[identify(raw$r), 3]
## Jobb ábrázolás
plot(raw$r, type = "h")
## Dátum másként
Ido <- seq(as.Date("2002-01-01"), as.Date("2025-12-31"))

## Plot és mentése
plot(Ido,raw$r, type = "h", col = "blue", ylab = "Napi csapadék [mm]", xaxs = "i", ylim = c(0,80), yaxs = "i")

pdf(height = 10/2.54, width = 19/2.54)
plot(Ido,raw$r, type = "h", col = "blue", ylab = "Napi csapadék [mm]", xaxs = "i", ylim = c(0,80), yaxs = "i")
dev.off()

png(units = "cm", height = 10, width = 19, res = 300)
plot(Ido,raw$r, type = "h", col = "blue", ylab = "Napi csapadék [mm]", xaxs = "i", ylim = c(0,80), yaxs = "i", lend = 1)
dev.off()
