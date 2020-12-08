# LOAD PACK's and data TSV -------------------------------------------------------
pacman::p_load(tm,SnowballC,tidyverse,wordcloud,lubridate)
CSV <- openxlsx::read.xlsx("Licencias_2017 copia.xlsx")

# SOME GRAPHS, SMART DECISIONS ---------------------------------------------------
ggplot(CSV, aes(x=Distrito)) + geom_bar()
ggplot(CSV, aes(x=Unidad.Responsable)) + geom_bar()
ggplot(CSV, aes(x=Unidad.Responsable, y=Distrito)) + geom_count()
