#read  data
em_dat <- readRDS("summarySCC_PM25.rds")
class_code <- readRDS("Source_Classification_Code.rds")

## aggregate yearly emmisions
sum <- aggregate(em_d$Emissions, by=list(year=em_d$year), FUN=sum)

## plotting

plot(sum_by_year$year, sum_by_year$x, type = "l", main = "Total Emissions of PM2.5 in Baltimore City", ylab = "Total emissions of PM2.5 (tons)", xlab = "Year")
