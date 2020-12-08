# LOAD PACK's and data TSV -------------------------------------------------------
pacman::p_load(tm,SnowballC,tidyverse,wordcloud,lubridate)
install.packages("modeest") 
library(modeest)
MAD <- openxlsx::read.xlsx("DENEGADAS_PERF.xlsx")
# SOME GRAPHS, SMART DECISIONS ---------------------------------------------------
ggplot(MAD, aes(y=X3)) + geom_bar()
ggplot(MAD, aes(y = X5)) + geom_bar()
mlv(MAD$X4, method = "mfv")[1]
