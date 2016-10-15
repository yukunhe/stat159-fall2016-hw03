data = read.csv('data/Advertising.csv', header= T)

mod.tv = lm(Sales~TV, data = data)
mod.radio = lm(Sales~Radio, data = data)
mod.newspaper = lm(Sales~Newspaper, data = data)
mod.multi = lm(Sales ~ TV + Radio + Newspaper, data = data)
summary.multi= summary(mod.multi)
summary.tv = summary(mod.tv)
summary.radio = summary(mod.radio)
summary.newspaper = summary(mod.newspaper)

save( mod.tv, mod.radio,mod.newspaper, mod.multi, summary.multi,summary.tv,
      summary.radio,summary.newspaper,file = "data/regression.RData")

png("images/residual-plot.png")
plot(mod.multi, 1)
dev.off()

png("images/normal-qq-plot.png")
plot(mod.multi, 2)
dev.off()

png("images/scale-location-plot.png")
plot(mod.multi, 3)
dev.off()

png("images/scatterplot-tv-sales.png")
plot(Sales ~ TV, data = data, pch=20, main = "Scatterplot between TV and Sales with fitted regression line")
abline(mod.tv, col = "red")
dev.off()

png("images/scatterplot-radio-sales.png")
plot(Sales ~ Radio, data = data, pch=20, main = "Scatterplot between Radio and Sales with fitted regression line")
abline(mod.radio, col = "red")
dev.off()

png("images/scatterplot-newspaper-sales.png")
plot(Sales ~ Newspaper, data = data, pch=20, main = "Scatterplot between Newspaper and Sales with fitted regression line")
abline(mod.newspaper, col = "red")
dev.off()





