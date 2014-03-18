##geolabR=group
##monVecteur=vector
##fieldMonVecteur=field monVecteur
##class=number 4
##styleClass=string classe
##showplots
library(classInt)
library("xtable")

classif = classIntervals(as.numeric(as.character(monVecteur[[fieldMonVecteur]])),n=class,style=styleClass)

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

>print(xtable(tab),type="html")
