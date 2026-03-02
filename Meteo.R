## Set working directory
dir() # List of current directory
help.start() # Help system
read.table("ta_h_Turkeve_19012023.csv", sep = ";") # Impot csv
?read.table # Manual page
Turk <- read.table("ta_h_Turkeve_19012023.csv", sep = ";") # Save in an object
save.image() # Save actual environment

str(Turk) # Structure of object
head(Turk) # Header of object
tail(Turk) # End of object
