# limpio la memoria
rm(list = ls(all.names = TRUE)) # remove all objects
gc(full = TRUE) # garbage collection

require("data.table")
require("yaml")

setwd("~/buckets/b1/")
dataset <- fread("./datasets/competencia_2023.csv.gz")

clase_por_mes <- as.data.table (dataset[,.N,list(foto_mes,clase_ternaria)])
