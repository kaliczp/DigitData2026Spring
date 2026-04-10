## Első állomás teszt beolvasás
rawinput <- "HABP_1RD_20020101_20251231_45604.csv"
raw <- read.table(rawinput, header = TRUE, sep = ";")
## Adat indexelés
raw$r
raw[1,"r"]
raw[1:7, 3]
