require(gstat)
library(gstat)

dados=read.table("Dados_Precipitacao.txt", head=T)
dados=as.data.frame(dados)
prod = read.table("produtividade_mun.txt", head=T)
prod = as.data.frame(prod)

prec = dados[,6]

g <- gstat(id = "Prod", formula = prod[,6]~1, locations = ~x+y,data = prod)
g <- gstat(g, id = "01_04_2015", formula = prec~1,  locations = ~x+y, data = dados)
vm<-variogram(g)
plot(vm)

g <- gstat(g, id = "Prod", model = vgm(c("Gau", "Exp", "Mat", "Sph","Wav")))                ##### PRIMEIRA VARI?VEL
g <- gstat(g, id = "01_04_2015", model = vgm(c("Gau", "Exp", "Mat", "Sph","Wav")))                ##### SEGUNDA VARI?VEL
g <- gstat(g, id = c("Prod","01_04_2015"), model = vgm(c("Gau", "Exp", "Mat", "Sph","Wav")))##### CROSS-VARIOGRAM

vm.fit <- fit.lmc(vm,g,fit.ranges = T, fit.lmc = T,correct.diagonal = 1.01)
vm.fit