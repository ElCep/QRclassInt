##geolabR=group
##couche=vector
##champ=field couche
##class=number 4
##styleClass=string sd
##showplots
##sortie=output vector
library(classInt)
library("xtable")

classif = classIntervals(couche[[champ]],n=class,style=styleClass)

#definition des breaks
brks<-round(classif$brks,digits=2)

#preparation de la legende
# Create labels from break values
intLabels =matrix(1:(length(brks)-1))
for(j in 1:length(intLabels )){intLabels [j] = paste(as.character(brks[j]),"-",as.character(brks[j+1]))}

tab=as.data.frame(intLabels)
a=hist(classif$var,classif$brks)
tab$count=a$counts
colnames(tab)=c("interval","nombre d'individus")

pal1 = c("wheat1", "red3")
plot(classif,pal=pal1)
>class(intLabels)
>print(xtable(tab),type="html")

facteur<-cut(classif$var, classif$brks) #transformation en facteur
couche@data<-cbind(couche@data, facteur) #rajout d'une colonne
sortie=couche
