#I created a dataset in my environment called temp_schip and used the TMAX and 
#DATE columns as the data for the x and y axes respectively.
x <- 'TMAX'
y <- 'DATE'(1951:2021)
temp_schip <- read.csv(url("https://raw.githubusercontent.com/hannesrosenbusch/schiphol_class/master/schiphol_data.csv"))
plot(x = temp_schip$TMAX, y = temp_schip$DATE, xlab = "Maximum Temperature", ylab = "Year")