## read data
emission_data <- readRDS("summarySCC_PM25.rds")
class_code <- readRDS("Source_Classification_Code.rds")

## subset "on the road" data from baltimore city 
baltimore_data <- subset(emissions_data, emissions_data$fips=="24510" & emissions_data$type=="ON-ROAD")
baltimore_year <- aggregate(baltimore_data$Emissions, by=list(baltimore_data$year), FUN=sum)
colnames(baltimore_year) <- c("Year", "Emissions")

## create plot with car emissions in Baltimore City from 1999-2008

plot(baltimore_year$Year, baltimore_year$Emissions, type = "o", xlab = "year", ylab = "Total Emissions (tons)",
     main = "Total Emissions of PM2.5 related to motor Vehicles", sub = "Baltimore City")

