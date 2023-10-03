# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/_03/611_CA_reparar_dataset_03.r")
source("~/dm2023b/src/workflow-inicial/_03/621_DR_corregir_drifting_03.r")
source("~/dm2023b/src/workflow-inicial/_03/631_FE_historia_03.r")
source("~/dm2023b/src/workflow-inicial/_03/641_TS_training_strategy_03.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/_03/651_HT_lightgbm_03.r")
source("~/dm2023b/src/workflow-inicial/_03/661_ZZ_final_03.r")
