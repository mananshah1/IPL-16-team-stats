# Read in playoff and playoff15 csv files. They are created the same way we created the 2016 test set.

playoff <- read.csv("playoff.csv")
playoff15<- read.csv("playoff15.csv") 

playoff15$rpo.diff <- playoff15$batting.rpo - playoff15$bowling.rpo

#playofftill15 is our training set now

playofftill15 <- rbind(playoff[,c(1:13)], playoff15)

playoff15$Playoffs <- c(1,0,1,0,1,1,0,0)

# playoffupdate <- read.csv("playoffupdate.csv")

str(playoff)

playoff$First.five <- as.numeric(playoff$First.five)
playoff$First.Seven <- as.numeric(playoff$First.Seven)

Log <- glm(Playoffs ~ fifty.percent + batting.rpo + bowling.rpo  +  bowling.sr + First.five + First.Seven , data= playofftill15, family = "binomial" )
summary(Log)

Log2 <- glm(Playoffs ~ fifty.percent + batting.rpo + bowling.rpo  +  bowling.sr + First.Seven + NRR, data= playofftill15, family = "binomial" )
summary(Log2)

Log3 <- glm(Playoffs ~ fifty.percent + batting.rpo + bowling.rpo  +  bowling.sr + First.Seven , data= playofftill15, family = "binomial" )
summary(Log3)


library(randomForest)
Rf <- randomForest(as.factor(Playoffs) ~ fifty.percent + batting.rpo + bowling.rpo  +  bowling.sr + First.five + First.Seven , data= playofftill15, method="class" )

varImpPlot(Rf)

predictRf <- predict(Rf, type="prob")
predictRf[,2]

RFtrain <- cbind(playofftill15$Team, playofftill15$Year ,playofftill15$Playoffs, predictRf[,2])

table(predictRf[,2]>0.5, playoff$Playoffs)


TeamprobsRf <- data.frame(Team = playofftill15$Team , Year = playofftill15$Year  ,Prob = predictRf[,2], Result = playofftill15$Playoffs)
TeamprobsRf

library(rpart.plot)

library(rpart)

CART <- rpart(Playoffs ~ fifty.percent + batting.rpo + bowling.rpo  +  bowling.sr + First.five + First.Seven  , data= playofftill15, method="class" , minbucket = 1)
prp(CART)

predictCART <- predict(CART, type="prob")

predictCART[,2]

predictCARTTest <- predict(CART, newdata= playoff16, type="prob")

predictCARTTest[,2]

predictRfTest <- predict(Rf, newdata= playoff16, type="prob")

predictRfTest[,2]

RFtest <- data.frame(playoff16$Team, playoff16$Year , Prob= predictRfTest[,2])

library(e1071)

SVMmodel <- svm( Playoffs ~ fifty.percent + batting.rpo + bowling.rpo  +  bowling.sr + First.five + First.Seven , data= playofftill15)
summary(SVMmodel)

predictSVM <- predict(SVMmodel, type="prob")

playofftill15$Team

SVMTrain <- data.frame(playofftill15$Team, playofftill15$Year ,playofftill15$Playoffs, predictSVM)
predictSVMTest <- predict(SVMmodel, newdata= playoff16, type="prob")
predictSVMTest

SVMTest <- data.frame(playoff16$Team, playoff16$Year , predictSVMTest)

predictLog <- predict(Log, type= "response") 
predictLog

predictLog2 <- predict(Log2, type= "response") 
predictLog2

predictLog3 <- predict(Log3, type= "response") 
predictLog3

TeamprobsLR <- data.frame(Team = playofftill15$Team , Year = playofftill15$Year  ,Prob = predictLog3, Result = playofftill15$Playoffs)
TeamprobsLR

predictLogTest <- predict(Log, newdata= playoff16, type= "response") 
predictLogTest

predictLogTest2 <- predict(Log2, newdata= playoff16, type= "response") 
predictLogTest2

predictLogTest3 <- predict(Log3, newdata= playoffupdate, type= "response") 
predictLogTest3


