# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-inicial/_04/611_CA_reparar_dataset_04.r")
source("~/dm2023b/src/workflow-inicial/_04/621_DR_corregir_drifting_04.r")
source("~/dm2023b/src/workflow-inicial/_04/631_FE_historia_04.r")
source("~/dm2023b/src/workflow-inicial/_04/641_TS_training_strategy_04.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-inicial/_04/651_HT_lightgbm_04.r")
source("~/dm2023b/src/workflow-inicial/_04/661_ZZ_final_04.r")
