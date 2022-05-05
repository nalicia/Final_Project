bost_table <- read.csv(file='Resources/bost_data_for_R.csv',check.names=F,stringsAsFactors = F)

summary(lm(CMEDV ~ CRIM + ZN + NOX + RM + CHAS + DIS + RAD + TAX + PTRATIO + LSTAT,data=bost_table)) #generate multiple linear regression model
   