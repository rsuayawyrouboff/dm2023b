# limpio la memoria
rm(list = ls(all.names = TRUE)) # remove all objects
gc(full = TRUE) # garbage collection

require("data.table")
require("yaml")

# cargo el dataset
dataset <- fread("./datasets/competencia_2023.csv.gz")

