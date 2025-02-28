# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/_01/611_CA_reparar_dataset_01.r")
source("~/dm2023b/src/workflow-inicial/_01/621_DR_corregir_drifting_01.r")
source("~/dm2023b/src/workflow-inicial/_01/631_FE_historia_01.r")
source("~/dm2023b/src/workflow-inicial/_01/641_TS_training_strategy_01.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/_01/651_HT_lightgbm_01.r")
source("~/dm2023b/src/workflow-inicial/_01/661_ZZ_final_01.r")
