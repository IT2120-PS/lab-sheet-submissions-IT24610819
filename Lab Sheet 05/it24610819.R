setwd("C:\\Users\\Lenovo\\Desktop\\Lab05")

#Q1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

fix(Delivery_Times)

names(Delivery_Times)<-c("x1")

attach(Delivery_Times)

#Q2
histogram <-hist(histogram <- hist(x1,
                                   main = "Histogram for Delivery Times (Minutes)",
                                   breaks = seq(20, 70, length.out = 10),
                                   right = FALSE)
)

#Q3
#The histogram shows that delivery times are approximately symmetric.
#Highest delivery times fall between 35 and 45 minutes.
#The sahpe is bell-shaped, resembling a normal distribution.
#There are fewer observations at both the lower and upper ends.

#Q4
breaks<-round(histogram$breaks)
freq <- histogram$counts

cum.freq <- cumsum(freq)
new<-c()
for(i in 1: length(breaks)){
  if(i==1){
    new[i]=0
  }
  else{
    new[i]=cum.freq[i-1]
  }
}

plot(breaks,new,type='l',main='Cummulative Frequency Polygon for Delivery Times',
     xlab="Delivery Times",ylab="Cummulative Frequency",ylim=c(0,max(cum.freq)))

