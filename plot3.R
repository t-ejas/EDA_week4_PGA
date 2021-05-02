## read data
em_data <- readRDS("summarySCC_PM25.rds")
class_code <- readRDS("Source_Classification_Code.rds")

## baltimore data 
baltimore <- subset(em_data, em_data$fips=="24510")
baltimore_year <- aggregate(baltimore_data$Emissions, by=list(baltimore_data$type, baltimore_data$year), 
 FUN=sum)
colnames(baltimore_year) <- c("Type", "Year", "Emissions")

## plot data with ggplot
library(ggplot2)
qplot(Year, Emissions, data = baltimore_type_year, color = Type, geom = "line") + ggtitle("Total Emissions of PM2.5 in Baltimore City By pollutant type") + 
ylab("Total Emissions (tons)") +  xlab("Year") 
