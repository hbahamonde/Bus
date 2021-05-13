############################## 
# Analyses
##############################
cat("\014")
rm(list=ls())
graphics.off()

# loads pacman
if (!require("pacman")) install.packages("pacman"); library(pacman) 

# import data
p_load(rio)
bus = rio::import(file = 'https://github.com/hbahamonde/Bus/raw/main/dat.Rdata')


# import bus data
p_load(rio)
bip = rio::import(file = 'https://github.com/hbahamonde/Bus/raw/main/bus2_data.txt')

# drop NAs
bip$Destino[bip$Destino == "(En Blanco)"] <- NA 
bip$Origen[bip$Origen == "(En Blanco)"] <- NA 
bip = na.omit(bip)


# https://cran.r-project.org/web/packages/ggalluvial/vignettes/ggalluvial.html
p_load(ggalluvial)
# is_alluvia_form(as.data.frame(bip), axes = 1:3, silent = TRUE)

p_load(dplyr)
bip = bip %>% select(-c(Fecha))
bip$Origen = as.factor(bip$Origen)
bip$Destino = as.factor(bip$Destino)
#bip = bip[!duplicated(bip[c(1,2)]),] # drop trips within the same municipality
#bip$check = bip$Origen == bip$Destino

p_load(doBy)
bip.alluvium = summaryBy(Viajes ~ Origen + Destino, FUN=c(sum), data=bip)

p_load(ggplot2,ggalluvial)
options(scipen=10000)
ggplot(bip.alluvium,
       aes(y = Viajes.sum, axis1 = Origen, axis2 = Destino)) +
  geom_alluvium() +
  geom_stratum(width = 1/20, color = "grey") +
  geom_label(stat = "stratum", aes(label = after_stat(stratum))) 


#######
bip.f = bip.alluvium

p_load(rio, tidyverse)
idc.d = rio::import(file = 'https://github.com/hbahamonde/Tobalaba/raw/main/IDC_data.csv',which = 1)
idc.d = idc.d %>% select(c(Comuna,Economia))

colnames(bip.f)[colnames(bip.f)=="Origen"] <- "Comuna"
test = merge(bip.f,idc.d, by = c("Comuna"))
colnames(test)[colnames(test)=="Comuna"] <- "Origen"
colnames(test)[colnames(test)=="Economia"] <- "Economia.O"
#test$Economia.O = round(test$Economia.O,1)

colnames(test)[colnames(test)=="Destino"] <- "Comuna"
test = merge(test,idc.d, by = c("Comuna"))
colnames(test)[colnames(test)=="Economia"] <- "Economia.D"
colnames(test)[colnames(test)=="Comuna"] <- "Destino"
#test$Economia.D = round(test$Economia.D,1)



# quantiles
#p_load(gtools)
#quantile(test$Economia.O)

#p_load(tidyverse)
#test = test %>% mutate(Economia.O.c = ntile(Economia.O, 4))
#test = test %>% mutate(Economia.D.c = ntile(Economia.D, 4))



p_load(ggplot2,ggalluvial)

# by quantile
p_load(ggplot2,ggalluvial)
ggplot(test,
       aes(y = Viajes.sum, axis1 = Economia.O, axis2 = Economia.D)) +
  geom_alluvium(aes(fill = Economia.O),  alpha = 0.5, decreasing = T, curve_type = "sigmoid", width = 2/5, discern = TRUE) +  
  geom_stratum(width = 2/5, discern = TRUE) +
  geom_text(stat = "stratum", discern = TRUE, aes(label = after_stat(stratum)))

# Plot shows that an important part of BIP! transactions start in Vitacura? Does that mean that 
# the wealthy travel more by bus? Not really. It could be that nannies are just going home at the end of the day
# and counts as origin==Vitacura.

# https://www.r-bloggers.com/2017/03/experimenting-with-sankey-diagrams-in-r-and-python/
# p_load(googleVis)
# options(gvis.plot.tag="chart")
# plot(gvisSankey(bip[,c("Origen", "Destino", "Viajes")]))

# Ideas
## https://corybrunson.github.io/ggalluvial/reference/alluvial-data.html
## https://corybrunson.github.io/ggalluvial/reference/geom_alluvium.html

####################################################################################
# Time Series
####################################################################################
cat("\014")
rm(list=ls())
graphics.off()

# loads pacman
if (!require("pacman")) install.packages("pacman"); library(pacman) 

# import bus data
p_load(rio)
bip = rio::import(file = 'https://github.com/hbahamonde/Bus/raw/main/bus_data.txt')
colnames(bip)[colnames(bip)=="Codigo comuna"] <- "mun.cod"
colnames(bip)[colnames(bip)=="Fecha"] <- "Date"
bip$Date = as.Date(bip$Date)
bip = bip %>% select(-c(Comuna))


# Load Fase Data
p_load(rio, tidyverse)
paso.d = rio::import(file = 'https://github.com/hbahamonde/Bus/raw/main/paso.Rdata')

# merge both df's
bus = merge(bip, paso.d, by=c("Date", "mun.cod"))
bus$Paso = as.factor(bus$Paso)

# high/low variable
## https://es.datachile.io/geo/region-metropolitana-santiago-13/la-reina-125 (info on la reina)
bus$Poverty = ifelse(bus$Economia>=median(bus$Economia)+sd(bus$Economia), "Wealthy", "Poor")

# time series plot
p_load(ggplot2)
ggplot(bus) +
  geom_bar(aes(y=Transacciones,x=Date,fill = Paso),stat="identity", width = 0.9) + facet_wrap(Poverty~Comuna)
  #facet_grid(scales = "free_y", rows = vars(Comuna), cols = vars(Poverty))


# ideas
##  pool regression interaction paso*poor (continuous and binary).





