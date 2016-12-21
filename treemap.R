# Treemap.

install.packages("plotrix")
library(plotrix)
?sizetree

landing<-factor(sample(c("Home"),8,TRUE),levels="Home")
second<-factor(c(rep("Women",4),rep("Unknown",2),"Collection","Contact"),levels=c("Women","Unknown","Collection","Contact"))
third<-factor(c(rep("Product",2),"Collection","Unknown","Other list","Women",rep("NA",2)),levels=c("Product","Collection","Unknown","Other list","Women","NA"))
fourth<-factor(c("Women","Checkout",rep("NA",6)),levels=c("Women","Checkout","NA"))
exit<-factor(c("Product",rep("NA",7)),levels=c("Product","NA"))
path<-data.frame(landing,second,third,fourth,exit)

# throw in a few NAs
path$third[c(7:8)]<-NA
path$fourth[c(3:8)]<-NA
path$exit[c(2:8)]<-NA

# first let sizetree work out the colors
sizetree(path,main="Content path")


bhcol<-list(c("#201545","#ffcd00","#bfeb00","#ff5000","#0064cc","#7200cc","#00ccc4","#EFEDF5"),
            c("#7200cc","#bfeb00","#ffcd00","#0064cc","#201545","#ffcd00","#00ccc4","#EFEDF5"),
            c("#ff5000","#ffcd00","#bfeb00","#00ccc4","#7200cc","#201545","#0064cc","#EFEDF5"),
            c("#7200cc","#EFEDF5","#201545","#bfeb00","#ff5000","#0064cc","#ffcd00","#00ccc4"),
            c("#ff5000","#ffcd00","#bfeb00","#00ccc4","#7200cc","#201545","#0064cc","#EFEDF5"))

sizetree(path,col=c(bhcol[1],bhcol[2],bhcol[3],bhcol[4],bhcol[5]),main="Content path",showval=FALSE)

# adding labels
