library(ca)
# install.packages('ca')
library (readr)
# install.packages('readr')

# Downloaded file
# setwd("C:/")
# df <- read.csv("CA_9-13.csv", row.names=1) 

# URL upload
urlfile="https://raw.githubusercontent.com/EnglertYang/Pima/main/CA_Classdata.csv"
df <-read.csv(url(urlfile), row.names=1)

result<-mjca(df)

#selection 1: activities x spending
selection1<-df[1:25, c(1, 2, 3, 4, 5, 6, 18)]
s1 <-mjca(selection1)
plot(s1)

#selection 2: music genre x spending
selection2<-df[1:25, c(7, 8, 9, 10, 11, 18)]
s2 <-mjca(selection2)
plot(s2)

#selection 3: music genre x activities
selection3<-df[1:25, 1:12]
s3 <-mjca(selection3)
plot(s3)

#selection 4: social media feed x spending
selection4<-df[1:25, c(13, 14, 15, 16, 17, 18)]
s4<-mjca(selection4)
plot(s4)

# total chart  
plot(result)
