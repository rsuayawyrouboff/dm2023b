# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/_02/611_CA_reparar_dataset_02.r")
source("~/dm2023b/src/workflow-inicial/_02/621_DR_corregir_drifting_02.r")
source("~/dm2023b/src/workflow-inicial/_02/631_FE_historia_02.r")
source("~/dm2023b/src/workflow-inicial/_02/641_TS_training_strategy_02.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/_02/651_HT_lightgbm_02.r")
source("~/dm2023b/src/workflow-inicial/_02/661_ZZ_final_02.r")
