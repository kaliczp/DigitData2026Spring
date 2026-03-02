## Set working directory
dir() # List of current directory
help.start() # Help system
read.table("ta_h_Turkeve_19012023.csv", sep = ";") # Impot csv
?read.table # Manual page
Turk <- read.table(file = "ta_h_Turkeve_19012023.csv", sep = ";", header = TRUE) # Save in an object
Turk = read.table("ta_h_Turkeve_19012023.csv", TRUE, ";") # Ordered attribs without name, and = assingnment

save.image() # Save actual environment

str(Turk) # Structure of object
head(Turk) # Header of object
tail(Turk) # End of object

Turk # Print object with their name not good if the object long

str(Turk$ta) # structure of ta column

plot(Turk$ta) # Plot temperature vector
plot(Turk$ta, type = "l") # Plot temperature vector

summary(Turk$ta) # Summary from vector with quartiles
summary(Turk) # Summary of data.frame

boxplot(Turk$ta) # Graphical summary from vector

## Create date vector
1:100 # From 1 to 100
seq(1, 100) # Same as above
as.Date("1901-01-01") # Date generation
Ido <- seq(as.Date("1901-01-01"), as.Date("2023-12-31")) # Same as above

plot(Ido, Turk$ta, type = "l") # Plot temperature vector

## Time-series wiht xts package
install.packages("xts")
