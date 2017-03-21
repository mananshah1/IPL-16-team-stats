library(XML)

#Rising Pune stats

url1="http://stats.espncricinfo.com/indian-premier-league-2016/engine/records/averages/batting_bowling_by_team.html?id=11001;team=5843;type=tournament"

tables=readHTMLTable(url1)
rp2016bat<- tables$"Rising Pune Supergiants batting averages"
rp2016bowl<- tables$"Rising Pune Supergiants bowling averages"
str(rp2016bat)



rp2016bowl$TeamEconomy = sum(as.numeric(levels(rp2016bowl$Runs))[rp2016bowl$Runs],na.rm=TRUE) / sum(as.numeric(levels(rp2016bowl$Overs))[rp2016bowl$Overs],na.rm=TRUE)
rp2016bowl$TeamSR = round(sum(as.numeric(levels(rp2016bowl$Overs))[rp2016bowl$Overs],na.rm=TRUE))*6 / sum(as.numeric(levels(rp2016bowl$Wkts))[rp2016bowl$Wkts],na.rm=TRUE)

rp2016bowl$50 <-make.names(rp2016bowl$50 )

rp2016bat$RPB = sum(as.numeric(levels(rp2016bat$Runs))[rp2016bat$Runs],na.rm=TRUE) / sum(as.numeric(levels(rp2016bat$BF))[rp2016bat$BF],na.rm=TRUE)
rp2016bat$TeamSR = rp2016bat$RPB*100
rp2016bat$TeamRPO = rp2016bat$RPB *6
rp2016bat$Outs= as.numeric(levels(rp2016bat$Inns)[rp2016bat$Inns],na.rm=TRUE)-as.numeric(levels(rp2016bat$NO)[rp2016bat$NO],na.rm=TRUE)

rp2016bat$Avg = sum(as.numeric(levels(rp2016bat$Runs))[rp2016bat$Runs],na.rm=TRUE) / sum(rp2016bat$Outs,na.rm=TRUE)


names(rp2016bat)[10] <- "Hundreds"
names(rp2016bat)[11] <- "Fifties"
names(rp2016bat)[13] <- "Fours"
names(rp2016bat)[14] <- "Sixes"

rp2016bat$Fiftypercent = (2* sum(as.numeric(levels(rp2016bat$Hundreds))[rp2016bat$Hundreds],na.rm=TRUE) + sum(as.numeric(levels(rp2016bat$Fifties))[rp2016bat$Fifties],na.rm=TRUE))/ sum(as.numeric(levels(rp2016bat$Inns))[rp2016bat$Inns],na.rm=TRUE)
rp2016bat$Boundpercent= (sum(as.numeric(levels(rp2016bat$Fours))[rp2016bat$Fours],na.rm=TRUE) + sum(as.numeric(levels(rp2016bat$Sixes))[rp2016bat$Sixes],na.rm=TRUE))/ sum(as.numeric(levels(rp2016bat$BF))[rp2016bat$BF],na.rm=TRUE)


write.csv(rp2016bat, file="rp2016bat.csv",row.names=FALSE)
write.csv(rp2016bowl, file="rp2016bowl.csv",row.names=FALSE)

#Mumbai Indians Stats

url2 = "http://stats.espncricinfo.com/indian-premier-league-2016/engine/records/averages/batting_bowling_by_team.html?id=11001;team=4346;type=tournament"
tables=readHTMLTable(url2)
#tables
mi2016bat<- tables$"Mumbai Indians batting averages"
mi2016bowl<- tables$"Mumbai Indians bowling averages"

mi2016bowl$TeamEconomy = sum(as.numeric(levels(mi2016bowl$Runs))[mi2016bowl$Runs],na.rm=TRUE) / sum(as.numeric(levels(mi2016bowl$Overs))[mi2016bowl$Overs],na.rm=TRUE)
mi2016bowl$TeamSR = round(sum(as.numeric(levels(mi2016bowl$Overs))[mi2016bowl$Overs],na.rm=TRUE))*6 / sum(as.numeric(levels(mi2016bowl$Wkts))[mi2016bowl$Wkts],na.rm=TRUE)



mi2016bat$RPB = sum(as.numeric(levels(mi2016bat$Runs))[mi2016bat$Runs],na.rm=TRUE) / sum(as.numeric(levels(mi2016bat$BF))[mi2016bat$BF],na.rm=TRUE)
mi2016bat$TeamSR = mi2016bat$RPB*100
mi2016bat$TeamRPO = mi2016bat$RPB *6


mi2016bat$Outs= as.numeric(levels(mi2016bat$Inns)[mi2016bat$Inns],na.rm=TRUE)-as.numeric(levels(mi2016bat$NO)[mi2016bat$NO],na.rm=TRUE)

mi2016bat$Avg = sum(as.numeric(levels(mi2016bat$Runs))[mi2016bat$Runs],na.rm=TRUE) / sum(mi2016bat$Outs,na.rm=TRUE)

names(mi2016bat)[10] <- "Hundreds"
names(mi2016bat)[11] <- "Fifties"
names(mi2016bat)[13] <- "Fours"
names(mi2016bat)[14] <- "Sixes"

mi2016bat$Fiftypercent = (2* sum(as.numeric(levels(mi2016bat$Hundreds))[mi2016bat$Hundreds],na.rm=TRUE) + sum(as.numeric(levels(mi2016bat$Fifties))[mi2016bat$Fifties],na.rm=TRUE))/ sum(as.numeric(levels(mi2016bat$Inns))[mi2016bat$Inns],na.rm=TRUE)
mi2016bat$Boundpercent= (sum(as.numeric(levels(mi2016bat$Fours))[mi2016bat$Fours],na.rm=TRUE) + sum(as.numeric(levels(mi2016bat$Sixes))[mi2016bat$Sixes],na.rm=TRUE))/ sum(as.numeric(levels(mi2016bat$BF))[mi2016bat$BF],na.rm=TRUE)


write.csv(mi2016bat, file="mi2016bat.csv",row.names=FALSE)
write.csv(mi2016bowl, file="mi2016bowl.csv",row.names=FALSE)

#KKR stats

url3 = "http://stats.espncricinfo.com/indian-premier-league-2016/engine/records/averages/batting_bowling_by_team.html?id=11001;team=4341;type=tournament"

tables=readHTMLTable(url3)
#tables
kkr2016bat<- tables$"Kolkata Knight Riders batting averages"
kkr2016bowl<- tables$"Kolkata Knight Riders bowling averages"

kkr2016bowl$TeamEconomy = sum(as.numeric(levels(kkr2016bowl$Runs))[kkr2016bowl$Runs],na.rm=TRUE) / sum(as.numeric(levels(kkr2016bowl$Overs))[kkr2016bowl$Overs],na.rm=TRUE)
kkr2016bowl$TeamSR = round(sum(as.numeric(levels(kkr2016bowl$Overs))[kkr2016bowl$Overs],na.rm=TRUE))*6 / sum(as.numeric(levels(kkr2016bowl$Wkts))[kkr2016bowl$Wkts],na.rm=TRUE)



kkr2016bat$RPB = sum(as.numeric(levels(kkr2016bat$Runs))[kkr2016bat$Runs],na.rm=TRUE) / sum(as.numeric(levels(kkr2016bat$BF))[kkr2016bat$BF],na.rm=TRUE)
kkr2016bat$TeamSR = kkr2016bat$RPB*100
kkr2016bat$TeamRPO = kkr2016bat$RPB *6

kkr2016bat$Outs= as.numeric(levels(kkr2016bat$Inns)[kkr2016bat$Inns],na.rm=TRUE)-as.numeric(levels(kkr2016bat$NO)[kkr2016bat$NO],na.rm=TRUE)

kkr2016bat$Avg = sum(as.numeric(levels(kkr2016bat$Runs))[kkr2016bat$Runs],na.rm=TRUE) / sum(kkr2016bat$Outs,na.rm=TRUE)

names(kkr2016bat)[10] <- "Hundreds"
names(kkr2016bat)[11] <- "Fifties"
names(kkr2016bat)[13] <- "Fours"
names(kkr2016bat)[14] <- "Sixes"

kkr2016bat$Fiftypercent = (2* sum(as.numeric(levels(kkr2016bat$Hundreds))[kkr2016bat$Hundreds],na.rm=TRUE) + sum(as.numeric(levels(kkr2016bat$Fifties))[kkr2016bat$Fifties],na.rm=TRUE))/ sum(as.numeric(levels(kkr2016bat$Inns))[kkr2016bat$Inns],na.rm=TRUE)
kkr2016bat$Boundpercent= (sum(as.numeric(levels(kkr2016bat$Fours))[kkr2016bat$Fours],na.rm=TRUE) + sum(as.numeric(levels(kkr2016bat$Sixes))[kkr2016bat$Sixes],na.rm=TRUE))/ sum(as.numeric(levels(kkr2016bat$BF))[kkr2016bat$BF],na.rm=TRUE)


write.csv(kkr2016bat, file="kkr2016bat.csv",row.names=FALSE)
write.csv(kkr2016bowl, file="kkr2016bowl.csv",row.names=FALSE)

# DD stats


url4 = "http://stats.espncricinfo.com/indian-premier-league-2016/engine/records/averages/batting_bowling_by_team.html?id=11001;team=4344;type=tournament"
tables=readHTMLTable(url4)
#tables
dd2016bat<- tables$"Delhi Daredevils batting averages"
dd2016bowl<- tables$"Delhi Daredevils bowling averages"


dd2016bowl$TeamEconomy = sum(as.numeric(levels(dd2016bowl$Runs))[dd2016bowl$Runs],na.rm=TRUE) / sum(as.numeric(levels(dd2016bowl$Overs))[dd2016bowl$Overs],na.rm=TRUE)
dd2016bowl$TeamSR = round(sum(as.numeric(levels(dd2016bowl$Overs))[dd2016bowl$Overs],na.rm=TRUE))*6 / sum(as.numeric(levels(dd2016bowl$Wkts))[dd2016bowl$Wkts],na.rm=TRUE)



dd2016bat$RPB = sum(as.numeric(levels(dd2016bat$Runs))[dd2016bat$Runs],na.rm=TRUE) / sum(as.numeric(levels(dd2016bat$BF))[dd2016bat$BF],na.rm=TRUE)
dd2016bat$TeamSR = dd2016bat$RPB*100
dd2016bat$TeamRPO = dd2016bat$RPB *6

dd2016bat$Outs= as.numeric(levels(dd2016bat$Inns)[dd2016bat$Inns],na.rm=TRUE)-as.numeric(levels(dd2016bat$NO)[dd2016bat$NO],na.rm=TRUE)

dd2016bat$Avg = sum(as.numeric(levels(dd2016bat$Runs))[dd2016bat$Runs],na.rm=TRUE) / sum(dd2016bat$Outs,na.rm=TRUE)

names(dd2016bat)[10] <- "Hundreds"
names(dd2016bat)[11] <- "Fifties"
names(dd2016bat)[13] <- "Fours"
names(dd2016bat)[14] <- "Sixes"

dd2016bat$Fiftypercent = (2* sum(as.numeric(levels(dd2016bat$Hundreds))[dd2016bat$Hundreds],na.rm=TRUE) + sum(as.numeric(levels(dd2016bat$Fifties))[dd2016bat$Fifties],na.rm=TRUE))/ sum(as.numeric(levels(dd2016bat$Inns))[dd2016bat$Inns],na.rm=TRUE)
dd2016bat$Boundpercent= (sum(as.numeric(levels(dd2016bat$Fours))[dd2016bat$Fours],na.rm=TRUE) + sum(as.numeric(levels(dd2016bat$Sixes))[dd2016bat$Sixes],na.rm=TRUE))/ sum(as.numeric(levels(dd2016bat$BF))[dd2016bat$BF],na.rm=TRUE)


write.csv(dd2016bat, file="dd2016bat.csv",row.names=FALSE)
write.csv(dd2016bowl, file="dd2016bowl.csv",row.names=FALSE)

# gl stats

url5 = "http://stats.espncricinfo.com/indian-premier-league-2016/engine/records/averages/batting_bowling_by_team.html?id=11001;team=5845;type=tournament"
tables=readHTMLTable(url5)
#tables
gl2016bat<- tables$"Gujarat Lions batting averages"
gl2016bowl<- tables$"Gujarat Lions bowling averages"


gl2016bowl$TeamEconomy = sum(as.numeric(levels(gl2016bowl$Runs))[gl2016bowl$Runs],na.rm=TRUE) / sum(as.numeric(levels(gl2016bowl$Overs))[gl2016bowl$Overs],na.rm=TRUE)
gl2016bowl$TeamSR = round(sum(as.numeric(levels(gl2016bowl$Overs))[gl2016bowl$Overs],na.rm=TRUE))*6 / sum(as.numeric(levels(gl2016bowl$Wkts))[gl2016bowl$Wkts],na.rm=TRUE)



gl2016bat$RPB = sum(as.numeric(levels(gl2016bat$Runs))[gl2016bat$Runs],na.rm=TRUE) / sum(as.numeric(levels(gl2016bat$BF))[gl2016bat$BF],na.rm=TRUE)
gl2016bat$TeamSR = gl2016bat$RPB*100
gl2016bat$TeamRPO = gl2016bat$RPB *6

gl2016bat$Outs= as.numeric(levels(gl2016bat$Inns)[gl2016bat$Inns],na.rm=TRUE)-as.numeric(levels(gl2016bat$NO)[gl2016bat$NO],na.rm=TRUE)

gl2016bat$Avg = sum(as.numeric(levels(gl2016bat$Runs))[gl2016bat$Runs],na.rm=TRUE) / sum(gl2016bat$Outs,na.rm=TRUE)

names(gl2016bat)[10] <- "Hundreds"
names(gl2016bat)[11] <- "Fifties"
names(gl2016bat)[13] <- "Fours"
names(gl2016bat)[14] <- "Sixes"

gl2016bat$Fiftypercent = (2* sum(as.numeric(levels(gl2016bat$Hundreds))[gl2016bat$Hundreds],na.rm=TRUE) + sum(as.numeric(levels(gl2016bat$Fifties))[gl2016bat$Fifties],na.rm=TRUE))/ sum(as.numeric(levels(gl2016bat$Inns))[gl2016bat$Inns],na.rm=TRUE)
gl2016bat$Boundpercent= (sum(as.numeric(levels(gl2016bat$Fours))[gl2016bat$Fours],na.rm=TRUE) + sum(as.numeric(levels(gl2016bat$Sixes))[gl2016bat$Sixes],na.rm=TRUE))/ sum(as.numeric(levels(gl2016bat$BF))[gl2016bat$BF],na.rm=TRUE)


write.csv(gl2016bat, file="gl2016bat.csv",row.names=FALSE)
write.csv(gl2016bowl, file="gl2016bowl.csv",row.names=FALSE)


# srh stats

url6 = "http://stats.espncricinfo.com/indian-premier-league-2016/engine/records/averages/batting_bowling_by_team.html?id=11001;team=5143;type=tournament"
tables=readHTMLTable(url6)
#tables
srh2016bat<- tables$"Sunrisers Hyderabad batting averages"
srh2016bowl<- tables$"Sunrisers Hyderabad bowling averages"


srh2016bowl$TeamEconomy = sum(as.numeric(levels(srh2016bowl$Runs))[srh2016bowl$Runs],na.rm=TRUE) / sum(as.numeric(levels(srh2016bowl$Overs))[srh2016bowl$Overs],na.rm=TRUE)
srh2016bowl$TeamSR = round(sum(as.numeric(levels(srh2016bowl$Overs))[srh2016bowl$Overs],na.rm=TRUE))*6 / sum(as.numeric(levels(srh2016bowl$Wkts))[srh2016bowl$Wkts],na.rm=TRUE)



srh2016bat$RPB = sum(as.numeric(levels(srh2016bat$Runs))[srh2016bat$Runs],na.rm=TRUE) / sum(as.numeric(levels(srh2016bat$BF))[srh2016bat$BF],na.rm=TRUE)
srh2016bat$TeamSR = srh2016bat$RPB*100
srh2016bat$TeamRPO = srh2016bat$RPB *6

srh2016bat$Outs= as.numeric(levels(srh2016bat$Inns)[srh2016bat$Inns],na.rm=TRUE)-as.numeric(levels(srh2016bat$NO)[srh2016bat$NO],na.rm=TRUE)

srh2016bat$Avg = sum(as.numeric(levels(srh2016bat$Runs))[srh2016bat$Runs],na.rm=TRUE) / sum(srh2016bat$Outs,na.rm=TRUE)

names(srh2016bat)[10] <- "Hundreds"
names(srh2016bat)[11] <- "Fifties"
names(srh2016bat)[13] <- "Fours"
names(srh2016bat)[14] <- "Sixes"

srh2016bat$Fiftypercent = (2* sum(as.numeric(levels(srh2016bat$Hundreds))[srh2016bat$Hundreds],na.rm=TRUE) + sum(as.numeric(levels(srh2016bat$Fifties))[srh2016bat$Fifties],na.rm=TRUE))/ sum(as.numeric(levels(srh2016bat$Inns))[srh2016bat$Inns],na.rm=TRUE)
srh2016bat$Boundpercent= (sum(as.numeric(levels(srh2016bat$Fours))[srh2016bat$Fours],na.rm=TRUE) + sum(as.numeric(levels(srh2016bat$Sixes))[srh2016bat$Sixes],na.rm=TRUE))/ sum(as.numeric(levels(srh2016bat$BF))[srh2016bat$BF],na.rm=TRUE)


write.csv(srh2016bat, file="srh2016bat.csv",row.names=FALSE)
write.csv(srh2016bowl, file="srh2016bowl.csv",row.names=FALSE)

# kxip stats

url7 = "http://stats.espncricinfo.com/indian-premier-league-2016/engine/records/averages/batting_bowling_by_team.html?id=11001;team=4342;type=tournament"
tables=readHTMLTable(url7)
#tables
kxip2016bat<- tables$"Kings XI Punjab batting averages"
kxip2016bowl<- tables$"Kings XI Punjab bowling averages"


kxip2016bowl$TeamEconomy = sum(as.numeric(levels(kxip2016bowl$Runs))[kxip2016bowl$Runs],na.rm=TRUE) / sum(as.numeric(levels(kxip2016bowl$Overs))[kxip2016bowl$Overs],na.rm=TRUE)
kxip2016bowl$TeamSR = round(sum(as.numeric(levels(kxip2016bowl$Overs))[kxip2016bowl$Overs],na.rm=TRUE))*6 / sum(as.numeric(levels(kxip2016bowl$Wkts))[kxip2016bowl$Wkts],na.rm=TRUE)



kxip2016bat$RPB = sum(as.numeric(levels(kxip2016bat$Runs))[kxip2016bat$Runs],na.rm=TRUE) / sum(as.numeric(levels(kxip2016bat$BF))[kxip2016bat$BF],na.rm=TRUE)
kxip2016bat$TeamSR = kxip2016bat$RPB*100
kxip2016bat$TeamRPO = kxip2016bat$RPB *6

kxip2016bat$Outs= as.numeric(levels(kxip2016bat$Inns)[kxip2016bat$Inns],na.rm=TRUE)-as.numeric(levels(kxip2016bat$NO)[kxip2016bat$NO],na.rm=TRUE)

kxip2016bat$Avg = sum(as.numeric(levels(kxip2016bat$Runs))[kxip2016bat$Runs],na.rm=TRUE) / sum(kxip2016bat$Outs,na.rm=TRUE)

names(kxip2016bat)[10] <- "Hundreds"
names(kxip2016bat)[11] <- "Fifties"
names(kxip2016bat)[13] <- "Fours"
names(kxip2016bat)[14] <- "Sixes"

kxip2016bat$Fiftypercent = (2* sum(as.numeric(levels(kxip2016bat$Hundreds))[kxip2016bat$Hundreds],na.rm=TRUE) + sum(as.numeric(levels(kxip2016bat$Fifties))[kxip2016bat$Fifties],na.rm=TRUE))/ sum(as.numeric(levels(kxip2016bat$Inns))[kxip2016bat$Inns],na.rm=TRUE)
kxip2016bat$Boundpercent= (sum(as.numeric(levels(kxip2016bat$Fours))[kxip2016bat$Fours],na.rm=TRUE) + sum(as.numeric(levels(kxip2016bat$Sixes))[kxip2016bat$Sixes],na.rm=TRUE))/ sum(as.numeric(levels(kxip2016bat$BF))[kxip2016bat$BF],na.rm=TRUE)


write.csv(kxip2016bat, file="kxip2016bat.csv",row.names=FALSE)
write.csv(kxip2016bowl, file="kxip2016bowl.csv",row.names=FALSE)

# rcb stats

url8 = "http://stats.espncricinfo.com/indian-premier-league-2016/engine/records/averages/batting_bowling_by_team.html?id=11001;team=4340;type=tournament"
tables=readHTMLTable(url8)
#tables
rcb2016bat<- tables$"Royal Challengers Bangalore batting averages"
rcb2016bowl<- tables$"Royal Challengers Bangalore bowling averages"


rcb2016bowl$TeamEconomy = sum(as.numeric(levels(rcb2016bowl$Runs))[rcb2016bowl$Runs],na.rm=TRUE) / sum(as.numeric(levels(rcb2016bowl$Overs))[rcb2016bowl$Overs],na.rm=TRUE)
rcb2016bowl$TeamSR = round(sum(as.numeric(levels(rcb2016bowl$Overs))[rcb2016bowl$Overs],na.rm=TRUE))*6 / sum(as.numeric(levels(rcb2016bowl$Wkts))[rcb2016bowl$Wkts],na.rm=TRUE)



rcb2016bat$RPB = sum(as.numeric(levels(rcb2016bat$Runs))[rcb2016bat$Runs],na.rm=TRUE) / sum(as.numeric(levels(rcb2016bat$BF))[rcb2016bat$BF],na.rm=TRUE)
rcb2016bat$TeamSR = rcb2016bat$RPB*100
rcb2016bat$TeamRPO = rcb2016bat$RPB *6

rcb2016bat$Outs= as.numeric(levels(rcb2016bat$Inns)[rcb2016bat$Inns],na.rm=TRUE)-as.numeric(levels(rcb2016bat$NO)[rcb2016bat$NO],na.rm=TRUE)

rcb2016bat$Avg = sum(as.numeric(levels(rcb2016bat$Runs))[rcb2016bat$Runs],na.rm=TRUE) / sum(rcb2016bat$Outs,na.rm=TRUE)

names(rcb2016bat)[10] <- "Hundreds"
names(rcb2016bat)[11] <- "Fifties"
names(rcb2016bat)[13] <- "Fours"
names(rcb2016bat)[14] <- "Sixes"

rcb2016bat$Fiftypercent = (2* sum(as.numeric(levels(rcb2016bat$Hundreds))[rcb2016bat$Hundreds],na.rm=TRUE) + sum(as.numeric(levels(rcb2016bat$Fifties))[rcb2016bat$Fifties],na.rm=TRUE))/ sum(as.numeric(levels(rcb2016bat$Inns))[rcb2016bat$Inns],na.rm=TRUE)
rcb2016bat$Boundpercent= (sum(as.numeric(levels(rcb2016bat$Fours))[rcb2016bat$Fours],na.rm=TRUE) + sum(as.numeric(levels(rcb2016bat$Sixes))[rcb2016bat$Sixes],na.rm=TRUE))/ sum(as.numeric(levels(rcb2016bat$BF))[rcb2016bat$BF],na.rm=TRUE)


write.csv(rcb2016bat, file="rcb2016bat.csv",row.names=FALSE)
write.csv(rcb2016bowl, file="rcb2016bowl.csv",row.names=FALSE)