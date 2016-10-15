data = read.csv('data/Advertising.csv', header= T)

png("images/histogram-sales.png")
hist(data$Sales, main = "Histogram of Sales", xlab = "Sales")
dev.off()

png("images/histogram-tv.png")
hist(data$TV, main = "Histogram of TV", xlab = "TV")
dev.off()

png("images/histogram-newspaper.png")
hist(data$Newspaper, main = "Histogram of Newspaper", xlab = "Newspaper")
dev.off()

png("images/histogram-radio.png")
hist(data$Radio, main = "Histogram of Radio", xlab = "Radio")
dev.off()

png("images/scatterplot-matrix.png")
pairs(data[,2:5])
dev.off()

cor.mat = cor(data[,2:5])
save(cor.mat, file = "data/correlation-matrix.RData")

sink("data/eda-output.txt")
cat("Summary Statistics for TV:\n")
summary(data$TV)
cat("Summary Statistics for Radio:\n")
summary(data$Radio)
cat("Summary Statistics for Newspaper:\n")
summary(data$Newspaper)
cat("Summary Statistics for Sales:\n")
summary(data$Sales)
cat("Correlation Matrix:\n")
cor(data[,2:5])
sink()

