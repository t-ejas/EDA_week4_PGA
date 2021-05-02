## read in emissions data and classification code

em_d <- readRDS("summarySCC_PM25.rds")
class_code <- readRDS("Source_Classification_Code.rds")

## subset baltimore data

baltimore <- subset(em_d, em_d$fips=="24510")
baltimore_year <- aggregate(baltimore$Emissions, by=list(baltimore$year), 
                                   FUN=sum)
## plot

plot(baltimore_data_year$Group.1, baltimore_data_year$x, type = "l", main = "Total Emissions of PM2.5 in Baltimore City", xlab = "year", 
ylab = "Total Emissions (tons)")
