# LÊ PNAD 2014
# RASTREIA
# Neylson Crepalde
##################

library(readr)
setwd("~/RASTREIA/PNAD 2014/Dados")
load("~/RASTREIA/PNAD 2014/Leitura em R/dicPNAD2014.Rdata")

tamanho = fwf_positions(start=dicpes2014$inicio,
                        end=(dicpes2014$inicio+dicpes2014$tamanho)-1,
                        col_names = as.character(dicpes2014$cod))
pnad = read_fwf("PES2014.txt", tamanho)
gc()


