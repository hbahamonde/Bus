# Bus Paper

cat("\014")
rm(list=ls())
graphics.off()


##############################
# Yearly weight data for weight matrix
##############################
# loads pacman
if (!require("pacman")) install.packages("pacman"); library(pacman) 


# import daily contagion data
p_load(foreign)


d1 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-03-30-CasosConfirmados.csv");d1$date <- as.Date('2020/03/30', format='%Y/%m/%d')
d2 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-04-01-CasosConfirmados.csv");d2$date <- as.Date('2020/04/01', format='%Y/%m/%d')
d3 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-04-03-CasosConfirmados.csv");d3$date <- as.Date('2020/04/03', format='%Y/%m/%d')
d4 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-04-06-CasosConfirmados.csv");d4$date <- as.Date('2020/04/06', format='%Y/%m/%d')
d5 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-04-08-CasosConfirmados.csv");d5$date <- as.Date('2020/04/08', format='%Y/%m/%d')
d6 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-04-10-CasosConfirmados.csv");d6$date <- as.Date('2020/04/10', format='%Y/%m/%d')
d7 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-04-13-CasosConfirmados.csv");d7$date <- as.Date('2020/04/13', format='%Y/%m/%d')
d8 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-04-15-CasosConfirmados.csv");d8$date <- as.Date('2020/04/15', format='%Y/%m/%d')
d9 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-04-17-CasosConfirmados.csv");d9$date <- as.Date('2020/04/17', format='%Y/%m/%d')
d10 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-04-20-CasosConfirmados.csv");d10$date <- as.Date('2020/04/20', format='%Y/%m/%d')
d11 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-04-24-CasosConfirmados.csv");d11$date <- as.Date('2020/04/24', format='%Y/%m/%d')
d12 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-04-27-CasosConfirmados.csv");d12$date <- as.Date('2020/04/27', format='%Y/%m/%d')
d13 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-05-01-CasosConfirmados.csv");d13$date <- as.Date('2020/05/01', format='%Y/%m/%d')
d14 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-05-04-CasosConfirmados.csv");d14$date <- as.Date('2020/05/04', format='%Y/%m/%d')
d15 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-05-08-CasosConfirmados.csv");d15$date <- as.Date('2020/05/08', format='%Y/%m/%d')
d16 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-05-11-CasosConfirmados.csv");d16$date <- as.Date('2020/05/11', format='%Y/%m/%d')
d17 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-05-15-CasosConfirmados.csv");d17$date <- as.Date('2020/05/15', format='%Y/%m/%d')
d18 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-05-18-CasosConfirmados.csv");d18$date <- as.Date('2020/05/18', format='%Y/%m/%d')
d19 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-05-22-CasosConfirmados.csv");d19$date <- as.Date('2020/05/22', format='%Y/%m/%d')
d20 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-05-25-CasosConfirmados.csv");d20$date <- as.Date('2020/05/25', format='%Y/%m/%d')
d21 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-05-29-CasosConfirmados.csv");d21$date <- as.Date('2020/05/29', format='%Y/%m/%d')
d22 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-06-01-CasosConfirmados.csv");d22$date <- as.Date('2020/06/01', format='%Y/%m/%d')
d23 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-06-05-CasosConfirmados.csv");d23$date <- as.Date('2020/06/05', format='%Y/%m/%d')
d24 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-06-08-CasosConfirmados.csv");d24$date <- as.Date('2020/06/08', format='%Y/%m/%d')
d25 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-06-12-CasosConfirmados.csv");d25$date <- as.Date('2020/06/12', format='%Y/%m/%d')
d26 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-06-15-CasosConfirmados.csv");d26$date <- as.Date('2020/06/15', format='%Y/%m/%d')
d27 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-06-19-CasosConfirmados.csv");d27$date <- as.Date('2020/06/19', format='%Y/%m/%d')
d28 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-06-23-CasosConfirmados.csv");d28$date <- as.Date('2020/06/23', format='%Y/%m/%d')
d29 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-06-28-CasosConfirmados.csv");d29$date <- as.Date('2020/06/28', format='%Y/%m/%d')
d30 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-07-01-CasosConfirmados.csv");d30$date <- as.Date('2020/07/01', format='%Y/%m/%d')
d31 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-07-05-CasosConfirmados.csv");d31$date <- as.Date('2020/07/05', format='%Y/%m/%d')
d32 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-07-10-CasosConfirmados.csv");d32$date <- as.Date('2020/07/10', format='%Y/%m/%d')
d33 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-07-13-CasosConfirmados.csv");d33$date <- as.Date('2020/07/13', format='%Y/%m/%d')
d34 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-07-17-CasosConfirmados.csv");d34$date <- as.Date('2020/07/17', format='%Y/%m/%d')
d35 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-07-20-CasosConfirmados.csv");d35$date <- as.Date('2020/07/20', format='%Y/%m/%d')
d36 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-07-24-CasosConfirmados.csv");d36$date <- as.Date('2020/07/24', format='%Y/%m/%d')
d37 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-07-27-CasosConfirmados.csv");d37$date <- as.Date('2020/07/27', format='%Y/%m/%d')
d38 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-07-31-CasosConfirmados.csv");d38$date <- as.Date('2020/07/31', format='%Y/%m/%d')
d39 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-08-03-CasosConfirmados.csv");d39$date <- as.Date('2020/08/03', format='%Y/%m/%d')
d40 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-08-07-CasosConfirmados.csv");d40$date <- as.Date('2020/08/07', format='%Y/%m/%d')
d41 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-08-10-CasosConfirmados.csv");d41$date <- as.Date('2020/08/10', format='%Y/%m/%d')
d42 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-08-14-CasosConfirmados.csv");d42$date <- as.Date('2020/08/14', format='%Y/%m/%d')
d43 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-08-17-CasosConfirmados.csv");d43$date <- as.Date('2020/08/17', format='%Y/%m/%d')
d44 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-08-21-CasosConfirmados.csv");d44$date <- as.Date('2020/08/21', format='%Y/%m/%d')
d45 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-08-24-CasosConfirmados.csv");d45$date <- as.Date('2020/08/24', format='%Y/%m/%d')
d46 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-08-28-CasosConfirmados.csv");d46$date <- as.Date('2020/08/28', format='%Y/%m/%d')
d47 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-08-31-CasosConfirmados.csv");d47$date <- as.Date('2020/08/31', format='%Y/%m/%d')
d48 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-09-04-CasosConfirmados.csv");d48$date <- as.Date('2020/09/04', format='%Y/%m/%d')
d49 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-09-07-CasosConfirmados.csv");d49$date <- as.Date('2020/09/07', format='%Y/%m/%d')
d50 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-09-11-CasosConfirmados.csv");d50$date <- as.Date('2020/09/11', format='%Y/%m/%d')
d51 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-09-14-CasosConfirmados.csv");d51$date <- as.Date('2020/09/14', format='%Y/%m/%d')
d52 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-09-18-CasosConfirmados.csv");d52$date <- as.Date('2020/09/18', format='%Y/%m/%d')
d53 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-09-21-CasosConfirmados.csv");d53$date <- as.Date('2020/09/21', format='%Y/%m/%d')
d54 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-09-25-CasosConfirmados.csv");d54$date <- as.Date('2020/09/25', format='%Y/%m/%d')
d55 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-09-28-CasosConfirmados.csv");d55$date <- as.Date('2020/09/28', format='%Y/%m/%d')
d56 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-10-02-CasosConfirmados.csv");d56$date <- as.Date('2020/10/02', format='%Y/%m/%d')
d57 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-10-05-CasosConfirmados.csv");d57$date <- as.Date('2020/10/05', format='%Y/%m/%d')
d58 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-10-09-CasosConfirmados.csv");d58$date <- as.Date('2020/10/09', format='%Y/%m/%d')
d59 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-10-12-CasosConfirmados.csv");d59$date <- as.Date('2020/10/12', format='%Y/%m/%d')
d60 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-10-16-CasosConfirmados.csv");d60$date <- as.Date('2020/10/16', format='%Y/%m/%d')
d61 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-10-19-CasosConfirmados.csv");d61$date <- as.Date('2020/10/19', format='%Y/%m/%d')
d62 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-10-24-CasosConfirmados.csv");d62$date <- as.Date('2020/10/24', format='%Y/%m/%d')
d63 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-10-26-CasosConfirmados.csv");d63$date <- as.Date('2020/10/26', format='%Y/%m/%d')
d64 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-10-30-CasosConfirmados.csv");d64$date <- as.Date('2020/10/30', format='%Y/%m/%d')
d65 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-11-02-CasosConfirmados.csv");d65$date <- as.Date('2020/11/02', format='%Y/%m/%d')
d66 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-11-06-CasosConfirmados.csv");d66$date <- as.Date('2020/11/06', format='%Y/%m/%d')
d67 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-11-09-CasosConfirmados.csv");d67$date <- as.Date('2020/11/09', format='%Y/%m/%d')
d68 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-11-13-CasosConfirmados.csv");d68$date <- as.Date('2020/11/13', format='%Y/%m/%d')
d69 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-11-16-CasosConfirmados.csv");d69$date <- as.Date('2020/11/16', format='%Y/%m/%d')
d70 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-11-20-CasosConfirmados.csv");d70$date <- as.Date('2020/11/20', format='%Y/%m/%d')
d71 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-11-23-CasosConfirmados.csv");d71$date <- as.Date('2020/11/23', format='%Y/%m/%d')
d72 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-11-27-CasosConfirmados.csv");d72$date <- as.Date('2020/11/27', format='%Y/%m/%d')
d73 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-11-30-CasosConfirmados.csv");d73$date <- as.Date('2020/11/30', format='%Y/%m/%d')
d74 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-12-04-CasosConfirmados.csv");d74$date <- as.Date('2020/12/04', format='%Y/%m/%d')
d75 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-12-07-CasosConfirmados.csv");d75$date <- as.Date('2020/12/07', format='%Y/%m/%d')
d76 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-12-11-CasosConfirmados.csv");d76$date <- as.Date('2020/12/11', format='%Y/%m/%d')
d77 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-12-14-CasosConfirmados.csv");d77$date <- as.Date('2020/12/14', format='%Y/%m/%d')
d78 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-12-18-CasosConfirmados.csv");d78$date <- as.Date('2020/12/18', format='%Y/%m/%d')
d79 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-12-21-CasosConfirmados.csv");d79$date <- as.Date('2020/12/21', format='%Y/%m/%d')
d80 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-12-25-CasosConfirmados.csv");d80$date <- as.Date('2020/12/25', format='%Y/%m/%d')
d81 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2020-12-28-CasosConfirmados.csv");d81$date <- as.Date('2020/12/28', format='%Y/%m/%d')
d82 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2021-01-01-CasosConfirmados.csv");d82$date <- as.Date('2021/01/01', format='%Y/%m/%d')
d83 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2021-01-04-CasosConfirmados.csv");d83$date <- as.Date('2021/01/04', format='%Y/%m/%d')
d84 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2021-01-08-CasosConfirmados.csv");d84$date <- as.Date('2021/01/08', format='%Y/%m/%d')
d85 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2021-01-11-CasosConfirmados.csv");d85$date <- as.Date('2021/01/11', format='%Y/%m/%d')
d86 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2021-01-15-CasosConfirmados.csv");d86$date <- as.Date('2021/01/15', format='%Y/%m/%d')
d87 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2021-01-18-CasosConfirmados.csv");d87$date <- as.Date('2021/01/18', format='%Y/%m/%d')
d88 = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto2/2021-01-22-CasosConfirmados.csv");d88$date <- as.Date('2021/01/22', format='%Y/%m/%d')

# rbind daily contagions df
d = rbind(d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31, d32, d33, d34, d35, d36, d37, d38, d39, d40, d41, d42, d43, d44, d45, d46, d47, d48, d49, d50, d51, d52, d53, d54, d55, d56, d57, d58, d59, d60, d61, d62, d63, d64, d65, d66, d67, d68, d69, d70, d71, d72, d73, d74, d75, d76, d77, d78, d79, d80, d81, d82, d83, d84, d85, d86, d87, d88)

setwd("~/research/Bus")
save(d, file = "d.Rdata")


#####
cat("\014")
rm(list=ls())
graphics.off()

# loads pacman
if (!require("pacman")) install.packages("pacman"); library(pacman) 

setwd("~/research/Bus")
load("d.Rdata")

p_load(dplyr)
d = dplyr::select(d, c("date", "Comuna", "Casos.Confirmados", "Codigo.comuna", "Region", "Poblacion"))

# Keep RM only
p_load(dplyr)
Comunas.RM = c(unique(d$Comuna[d$Region=="Metropolitana"]))

d = filter(d, Comuna == Comunas.RM[1] | Comuna == Comunas.RM[2] | Comuna == Comunas.RM[3] | Comuna == Comunas.RM[4] | Comuna == Comunas.RM[5] | Comuna == Comunas.RM[6] | Comuna == Comunas.RM[7] | Comuna == Comunas.RM[8] | Comuna == Comunas.RM[9] | Comuna == Comunas.RM[10] | Comuna == Comunas.RM[11] | Comuna == Comunas.RM[12] | Comuna == Comunas.RM[13] | Comuna == Comunas.RM[14] | Comuna == Comunas.RM[15] | Comuna == Comunas.RM[16] | Comuna == Comunas.RM[17] | Comuna == Comunas.RM[18] | Comuna == Comunas.RM[19] | Comuna == Comunas.RM[20] | Comuna == Comunas.RM[21] | Comuna == Comunas.RM[22] | Comuna == Comunas.RM[23] | Comuna == Comunas.RM[24] | Comuna == Comunas.RM[25] | Comuna == Comunas.RM[26] | Comuna == Comunas.RM[27] | Comuna == Comunas.RM[28] | Comuna == Comunas.RM[29] | Comuna == Comunas.RM[30] | Comuna == Comunas.RM[31] | Comuna == Comunas.RM[32] | Comuna == Comunas.RM[33] | Comuna == Comunas.RM[34] | Comuna == Comunas.RM[35] | Comuna == Comunas.RM[36] | Comuna == Comunas.RM[37] | Comuna == Comunas.RM[38] | Comuna == Comunas.RM[39] | Comuna == Comunas.RM[40] | Comuna == Comunas.RM[41] | Comuna == Comunas.RM[42] | Comuna == Comunas.RM[43] | Comuna == Comunas.RM[44] | Comuna == Comunas.RM[45] | Comuna == Comunas.RM[46] | Comuna == Comunas.RM[47] | Comuna == Comunas.RM[48] | Comuna == Comunas.RM[49] | Comuna == Comunas.RM[50] | Comuna == Comunas.RM[51] | Comuna == Comunas.RM[52])


# Merge Fase DF
p_load(foreign,dplyr)

paso.a.paso.d = read.csv("https://github.com/hbahamonde/Datos-COVID19/raw/master/output/producto74/paso_a_paso_std.csv")

paso.a.paso.d = dplyr::select(paso.a.paso.d, c("codigo_comuna", "Fecha", "Paso"))

colnames(paso.a.paso.d) <- c("Codigo.comuna", "date", "Paso")

d = merge(d, paso.a.paso.d, by=c("Codigo.comuna", "date"))
colnames(d) <- c("Codigo.comuna", "date", "Comuna", "COVID", "Region", "Poblacion", "Paso")

rownames(d) <- NULL # resets row names

d <- unique(d, by = c("Comuna", "date")) # somehow there were repeated data

# add % pop
d$COVID.p = round((d$COVID*100)/d$Poblacion,2)

# add poverty
p_load(foreign,dplyr)
casen = read.csv("https://github.com/hbahamonde/Bus/raw/main/casen2019.csv", header = TRUE,sep = ";")
casen = casen %>% dplyr::select(Codigo.comuna, poverty)
casen$poverty = as.numeric(as.character(casen$poverty)) 
d = merge(d, casen, by=c("Codigo.comuna"), all=F)


############
# Models
############


# OLS (fixed effects)
options(scipen=9999999)
ols = lm(COVID.p ~ Paso + poverty, data=d)


# Panel Regression
## https://www.princeton.edu/~otorres/Panel101R.pdf
p_load(plm)
d$date.2 = 1:nrow(d)
p.fe = plm(COVID.p ~ Paso + poverty, data = d, index = c("Comuna","date.2"), model="within")
p.re = plm(COVID.p ~ Paso + poverty, data = d, index = c("Comuna","date.2"), model="random")

# Ordered Probit
#p_load(MASS)
# o.probit = polr(COVID ~ as.factor(Paso) + poverty, data = d, Hess=TRUE)


# Table
p_load(texreg)
screenreg(list(ols,p.fe,p.re), omit.coef = "factor",custom.note="Since poverty is fixed by municipality it acts as a fixed effect. Due to multicoliniearity, the FE model drops the poverty variable.")

# Coefplot
coefplot::coefplot(ols,strict=TRUE,coefficients=c("poverty", "Paso"),newNames=c(poverty="Porcentaje de Pobreza\n(Casen 2019)", Paso="Paso a Paso\n(Fase)"))

# Prediction (OLS)
## https://www.dataquest.io/blog/statistical-learning-for-predictive-modeling-r/




# Plot 1
Girth <- seq(9,21, by=0.5) ## make a girth vector
Height <- seq(60,90, by=0.5) ## make a height vector
pred_grid <- expand.grid(Girth = Girth, Height = Height)
pred_grid$Volume2 <-predict(fit_2, new = pred_grid)


ols.predict.d = data.frame(
  
  rbind(
    predict(ols, data.frame(Paso = 1, poverty = min(d$poverty)), interval = "confidence"),
    predict(ols, data.frame(Paso = 1, poverty = max(d$poverty)), interval = "confidence"),
    
    predict(ols, data.frame(Paso = 2, poverty = min(d$poverty)), interval = "confidence"),
    predict(ols, data.frame(Paso = 2, poverty = max(d$poverty)), interval = "confidence"),
    
    predict(ols, data.frame(Paso = 3, poverty = min(d$poverty)), interval = "confidence"),
    predict(ols, data.frame(Paso = 3, poverty = max(d$poverty)), interval = "confidence"),
    
    predict(ols, data.frame(Paso = 4, poverty = min(d$poverty)), interval = "confidence"),
    predict(ols, data.frame(Paso = 4, poverty = max(d$poverty)), interval = "confidence")),
  Fase = c(rep("1",2),rep("2",2),rep("3",2),rep("4",2)),
  Pobreza = c(rep(c("Baja","Alta"),4))
  
)



ggplot(ols.predict.d, aes( x=Fase, y = fit, ymin = lwr, ymax = upr)) +
  geom_linerange(aes(color = Pobreza), alpha = 0.5,size = 2) +
  geom_point(aes(color = Pobreza, shape = Pobreza), size = 5) +
  theme_bw()






# Hazard Models

p_load(survival)
cox = coxph(Surv(L.cox$year, L.cox$year2, L.cox$incometax.s, origin=1901) ~ 
                log(constmanufact.L) + 
                log(constagricult.L) + 
                log(totpop) +
                cluster(country), data=L.cox)
