require(SpatialPack)

dados=read.table("data_prec_yield.txt", head=T)
dados

# defining x and y variables from the dataset
x <- dados$yield
y <- dados$X01_04_2015
coords <- dados[c("x","y")]

z <- codisp(x, y, coords)
z
plot(z)
