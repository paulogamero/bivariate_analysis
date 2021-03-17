require(gstat)
library(gstat)

d=read.table("prec.txt", head=T)
d=as.data.frame(d)
yield = read.table("yield.txt", head=T)
yield = as.data.frame(yield)

prec = d[,6]

g <- gstat(id = "yield", formula = yield[,6]~1, locations = ~x+y,data = yield)
g <- gstat(g, id = "01_04_2015", formula = prec~1,  locations = ~x+y, data = d)
vm<-variogram(g)
plot(vm)

g <- gstat(g, id = "yield", model = vgm(c("Gau", "Exp", "Mat", "Sph","Wav")))                ##### first variable
g <- gstat(g, id = "01_04_2015", model = vgm(c("Gau", "Exp", "Mat", "Sph","Wav")))           ##### second variable
g <- gstat(g, id = c("yield","01_04_2015"), model = vgm(c("Gau", "Exp", "Mat", "Sph","Wav")))##### CROSS-VARIOGRAM

vm.fit <- fit.lmc(vm,g,fit.ranges = T, fit.lmc = T,correct.diagonal = 1.01)
vm.fit
