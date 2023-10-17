# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-semillerio/_03/711_CA_reparar_dataset_03.r")
source("~/dm2023b/src/workflow-semillerio/_03/721_DR_corregir_drifting_03.r")
source("~/dm2023b/src/workflow-semillerio/_03/731_FE_historia_03.r")
source("~/dm2023b/src/workflow-semillerio/_03/741_TS_training_strategy_03.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-semillerio/_03/751_HT_lightgbm_03.r")
source("~/dm2023b/src/workflow-semillerio/_03/795_ZZ_final_semillerio_03.r")
