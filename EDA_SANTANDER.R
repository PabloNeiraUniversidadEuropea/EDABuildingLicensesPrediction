# LOAD PACK's and data TSV -------------------------------------------------------
pacman::p_load(tm,SnowballC,tidyverse,wordcloud,lubridate)
SAN <- read_csv("licencia_obra_r.csv")
# SOME GRAPHS, SMART DECISIONS ---------------------------------------------------
ggplot(SAN, aes(x = `ayto:fechaRegistroAnyo`)) + geom_density()
ggplot(SAN, aes(x = `ayto:fechaRegistroMes`)) + geom_bar()
ggplot(SAN, aes(y = `ayto:asunto`)) + geom_bar()
SAN %>% ggplot(aes(x =`ayto:fechaRegistroMes`,y=`ayto:asunto`)) + geom_count()
