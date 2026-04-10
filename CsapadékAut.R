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
Ido <- as.Date(as.character(raw$Time), format = "%Y%m%d")
Ido <- as.Date(paste(substring(as.character(raw$Time),1,4),
                     substring(as.character(raw$Time),5,6),
                     substring(as.character(raw$Time),7,8),
                     sep = "-"))
## Plot és mentése
plot(Ido,raw$r, type = "h", col = "blue", ylab = "Napi csapadék [mm]", xaxs = "i", ylim = c(0,80), yaxs = "i")

pdf(height = 10/2.54, width = 19/2.54)
plot(Ido,raw$r, type = "h", col = "blue", ylab = "Napi csapadék [mm]", xaxs = "i", ylim = c(0,80), yaxs = "i")
dev.off()

png(units = "cm", height = 10, width = 19, res = 300)
plot(Ido,raw$r, type = "h", col = "blue", ylab = "Napi csapadék [mm]", xaxs = "i", ylim = c(0,80), yaxs = "i", lend = 1)
dev.off()

library(xts)
## Automatizálás felé
rawinput <- "HABP_1RD_20020101_20251231_45604.csv"
rawinput <- "HABP_1RD_20260101_20260228_45604.csv"

## HABP karaktersort tartalmazó fájlok beolvasása
for(rawinput in dir(pattern = "HABP")) {
    raw <- read.table(rawinput, header = TRUE, sep = ";")
    Ido <- as.Date(paste(substring(as.character(raw$Time),1,4),
                         substring(as.character(raw$Time),5,6),
                         substring(as.character(raw$Time),7,8),
                         sep = "-"))
    assign(sub("csv", "xts", rawinput),xts(raw$r, Ido))
}

Kunpeszér <- c(HABP_1RD_20020101_20251231_45604.xts,
               HABP_1RD_20260101_20260228_45604.xts)
plot(Kunpeszér)

## Éves összeg
plot(apply.yearly(Kunpeszér, sum))
