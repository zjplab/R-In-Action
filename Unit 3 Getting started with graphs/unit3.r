#working with graphs
pdf("mygraph.pdf")
attach(mtcars)
plot(mt,mpg)
abline(lm(mpg~wt))
title("Regression of MPG on weight")
detach(mtcars)
dev.off()


#
dose<-c(20,30,40,45,60)
drugA<-c(16,20,27,40,60)
drugB<-c(15,18,25,31,40)


opar<-par(no.readonly = TRUE) #make a copy of current settings
par(lty=2,pch=17)  #dashed, 
plot(dose,drugA,type='b')
par(opar)

#the other way to plot
plot(dose,drugA,type='b',lty=2,pch=17)

#colour example 
n<-10
mycolors=rainbow(n)
pie(rep(1,n),labels=mycolors,col=mycolors)
mygrays<-gray(0:n/n)
pie(rep(1,n),labels=mygrays,col=mygrays)

