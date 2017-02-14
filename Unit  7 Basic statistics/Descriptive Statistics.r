vars<-c("mpg","hp","wt")
head(mtcars[vars])
summary(mtcars[vars])

#define your own summary function 
mystats<- function(x,na.omit=FALSE){
  if(na.omit)
    x<-x[!is.na(x)]
  m<-mean(x)
  n<-length(x)
  s<-sd(x)
  skew<-sum( (x-m)^3/s^3)/n
  kurt<-sum( (x-m)^4/s^4)/n -3
  return( c(n=n,mean=m,stdev=s,skew=skew,kurtosis=kurt))
}

sapply(mtcars[vars],mystats)

#Descriptive statistics by group using aggregate()
