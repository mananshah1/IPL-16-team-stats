#The purpose of this file is to create a test set based on the 2016 season of IPL. This is drawing from the 2016 ipl team stats R script so run that one first. 


rcb_bat <- read.csv("rcb2016bat.csv", stringsAsFactors = FALSE)

rcb_bat$Team <- 'RCB'

rcb_bat$Year <- 2016

playoff16 <- rcb_bat[c(1),c(19:23)]

playoff16 <- cbind(rcb_bat[c(1),c(17)], playoff16)

colnames(playoff16)[1] <- 'batting.rpo'

colnames(playoff16)[2] <- 'batting.average'

colnames(playoff16)[3] <- 'fifty.percent'

colnames(playoff16)[4] <- 'boundary.percent'

rcb_bowl <- read.csv("rcb2016bowl.csv", stringsAsFactors = FALSE)

rcb_bowl$Team <- 'RCB'

rcb_bowl$Year <- 2016

playoff16 <- cbind(rcb_bowl[c(1),c(16,17)], playoff16)

colnames(playoff16)[1] <- 'bowling.rpo'

colnames(playoff16)[2] <- 'bowling.sr'



# playoff16 <-  playoff16[ ,c(1,2,3,4,7,8,9,10)]

-----------
  
  
  mi_bat <- read.csv("mi2016bat.csv", stringsAsFactors = FALSE)

mi_bat$Team <- 'MI'

mi_bat$Year <- 2016

mi16 <- mi_bat[c(1), c(19:23)]

mi16 <- cbind(mi_bat[c(1),c(17)], mi16)

colnames(mi16)[1] <- 'batting.rpo'

colnames(mi16)[2] <- 'batting.average'

colnames(mi16)[3] <- 'fifty.percent'

colnames(mi16)[4] <- 'boundary.percent'

mi_bowl <- read.csv("mi2016bowl.csv", stringsAsFactors = FALSE)

mi_bowl$Team <- 'MI'

mi_bowl$Year <- 2016

mi16 <- cbind(mi_bowl[c(1),c(16,17)], mi16)

colnames(mi16)[1] <- 'bowling.rpo'

colnames(mi16)[2] <- 'bowling.sr'

colnames(mi16)[3] <- 'batting.rpo'

colnames(mi16)[4] <- 'batting.average'

colnames(mi16)[5] <- 'fifty.percent'

colnames(mi16)[6] <- 'boundary.percent'

playoff16 <- rbind(playoff16,mi16)

# playoff16 <-  playoff16[ ,c(1,2,3,4,7,8,9,10)]  


# KXIP

kxip_bat <- read.csv("kxip2016bat.csv", stringsAsFactors = FALSE)

kxip_bat$Team <- 'KXIP'

kxip_bat$Year <- 2016

kxip16 <- kxip_bat[c(1), c(19:23)]

kxip16 <- cbind(kxip_bat[c(1),c(17)], kxip16)

colnames(kxip16)[1] <- 'batting.rpo'

colnames(kxip16)[2] <- 'batting.average'

colnames(kxip16)[3] <- 'fifty.percent'

colnames(kxip16)[4] <- 'boundary.percent'

kxip_bowl <- read.csv("kxip2016bowl.csv", stringsAsFactors = FALSE)

kxip_bowl$Team <- 'kxip'

kxip_bowl$Year <- 2016

kxip16 <- cbind(kxip_bowl[c(1),c(16,17)], kxip16)

colnames(kxip16)[1] <- 'bowling.rpo'

colnames(kxip16)[2] <- 'bowling.sr'

colnames(kxip16)[3] <- 'batting.rpo'

colnames(kxip16)[4] <- 'batting.average'

colnames(kxip16)[5] <- 'fifty.percent'

colnames(kxip16)[6] <- 'boundary.percent'

playoff16 <- rbind(playoff16,kxip16)

# playoff16 <- playoff16[c(1,4,5),]

#SRH


srh_bat <- read.csv("srh2016bat.csv", stringsAsFactors = FALSE)

srh_bat$Team <- 'srh'

srh_bat$Year <- 2016

srh16 <- srh_bat[c(1), c(19:23)]

srh16 <- cbind(srh_bat[c(1),c(17)], srh16)

colnames(srh16)[1] <- 'batting.rpo'

colnames(srh16)[2] <- 'batting.average'

colnames(srh16)[3] <- 'fifty.percent'

colnames(srh16)[4] <- 'boundary.percent'

srh_bowl <- read.csv("srh2016bowl.csv", stringsAsFactors = FALSE)

srh_bowl$Team <- 'srh'

srh_bowl$Year <- 2016

srh16 <- cbind(srh_bowl[c(1),c(16,17)], srh16)

colnames(srh16)[1] <- 'bowling.rpo'

colnames(srh16)[2] <- 'bowling.sr'

colnames(srh16)[3] <- 'batting.rpo'

colnames(srh16)[4] <- 'batting.average'

colnames(srh16)[5] <- 'fifty.percent'

colnames(srh16)[6] <- 'boundary.percent'

playoff16 <- rbind(playoff16,srh16)

#RP


rp_bat <- read.csv("rp2016bat.csv", stringsAsFactors = FALSE)

rp_bat$Team <- 'rp'

rp_bat$Year <- 2016

rp16 <- rp_bat[c(1), c(19:23)]

rp16 <- cbind(rp_bat[c(1),c(17)], rp16)

colnames(rp16)[1] <- 'batting.rpo'

colnames(rp16)[2] <- 'batting.average'

colnames(rp16)[3] <- 'fifty.percent'

colnames(rp16)[4] <- 'boundary.percent'

rp_bowl <- read.csv("rp2016bowl.csv", stringsAsFactors = FALSE)

rp_bowl$Team <- 'rp'

rp_bowl$Year <- 2016

rp16 <- cbind(rp_bowl[c(1),c(16,17)], rp16)

colnames(rp16)[1] <- 'bowling.rpo'

colnames(rp16)[2] <- 'bowling.sr'

colnames(rp16)[3] <- 'batting.rpo'

colnames(rp16)[4] <- 'batting.average'

colnames(rp16)[5] <- 'fifty.percent'

colnames(rp16)[6] <- 'boundary.percent'

playoff16 <- rbind(playoff16,rp16)

#GL

gl_bat <- read.csv("gl2016bat.csv", stringsAsFactors = FALSE)

gl_bat$Team <- 'gl'

gl_bat$Year <- 2016

gl16 <- gl_bat[c(1), c(19:23)]

gl16 <- cbind(gl_bat[c(1),c(17)], gl16)

colnames(gl16)[1] <- 'batting.rpo'

colnames(gl16)[2] <- 'batting.average'

colnames(gl16)[3] <- 'fifty.percent'

colnames(gl16)[4] <- 'boundary.percent'

gl_bowl <- read.csv("gl2016bowl.csv", stringsAsFactors = FALSE)

gl_bowl$Team <- 'gl'

gl_bowl$Year <- 2016

gl16 <- cbind(gl_bowl[c(1),c(16,17)], gl16)

colnames(gl16)[1] <- 'bowling.rpo'

colnames(gl16)[2] <- 'bowling.sr'

colnames(gl16)[3] <- 'batting.rpo'

colnames(gl16)[4] <- 'batting.average'

colnames(gl16)[5] <- 'fifty.percent'

colnames(gl16)[6] <- 'boundary.percent'

playoff16 <- rbind(playoff16,gl16)

#KKR



kkr_bat <- read.csv("kkr2016bat.csv", stringsAsFactors = FALSE)

kkr_bat$Team <- 'kkr'

kkr_bat$Year <- 2016

kkr16 <- kkr_bat[c(1), c(19:23)]

kkr16 <- cbind(kkr_bat[c(1),c(17)], kkr16)

colnames(kkr16)[1] <- 'batting.rpo'

colnames(kkr16)[2] <- 'batting.average'

colnames(kkr16)[3] <- 'fifty.percent'

colnames(kkr16)[4] <- 'boundary.percent'

kkr_bowl <- read.csv("kkr2016bowl.csv", stringsAsFactors = FALSE)

kkr_bowl$Team <- 'kkr'

kkr_bowl$Year <- 2016

kkr16 <- cbind(kkr_bowl[c(1),c(16,17)], kkr16)

colnames(kkr16)[1] <- 'bowling.rpo'

colnames(kkr16)[2] <- 'bowling.sr'

colnames(kkr16)[3] <- 'batting.rpo'

colnames(kkr16)[4] <- 'batting.average'

colnames(kkr16)[5] <- 'fifty.percent'

colnames(kkr16)[6] <- 'boundary.percent'

playoff16 <- rbind(playoff16,kkr16)

#DD


dd_bat <- read.csv("dd2016bat.csv", stringsAsFactors = FALSE)

dd_bat$Team <- 'dd'

dd_bat$Year <- 2016

dd16 <- dd_bat[c(1), c(19:23)]

dd16 <- cbind(dd_bat[c(1),c(17)], dd16)

colnames(dd16)[1] <- 'batting.rpo'

colnames(dd16)[2] <- 'batting.average'

colnames(dd16)[3] <- 'fifty.percent'

colnames(dd16)[4] <- 'boundary.percent'

dd_bowl <- read.csv("dd2016bowl.csv", stringsAsFactors = FALSE)

dd_bowl$Team <- 'dd'

dd_bowl$Year <- 2016

dd16 <- cbind(dd_bowl[c(1),c(16,17)], dd16)

colnames(dd16)[1] <- 'bowling.rpo'

colnames(dd16)[2] <- 'bowling.sr'

colnames(dd16)[3] <- 'batting.rpo'

colnames(dd16)[4] <- 'batting.average'

colnames(dd16)[5] <- 'fifty.percent'

colnames(dd16)[6] <- 'boundary.percent'

playoff16 <- rbind(playoff16,dd16)

playoff16$First.five <- c(2,2,1,1,1,4,4,3)

playoff16$First.Seven <- c(2,3,2,4,2,6,4,5)

playoff16$NRR <- c(0.932,-0.146,-0.646,0.245,0.015,-0.374,0.106,-0.155)

playoff16$rpo.diff <- playoff16$batting.rpo - playoff16$bowling.rpo

