## -----------------------------------------------------------------------------
knitr::opts_chunk$set(
  eval = FALSE, echo = TRUE
)


## -----------------------------------------------------------------------------
#    library(pins)
#  
#    # Need to register as a board on R and have a specific token to access a public repository
#    board_register_github(repo = "BrunoMiguelPereira/test_2d",
#    token = "7ae9e5b34ae6417fc2a6cbb249acb90374430bef")
#  
#    tomato_dataset <- pin_get("tomato-2d", description = "A 2D dataset",
#    board = "github")
#  

## -----------------------------------------------------------------------------
#    head(tomato_dataset$F1_ppm)
#  
#    head(tomato_dataset$F2_ppm)
#  

## -----------------------------------------------------------------------------
#    library(specmine)
#  
#    # Check if it is a valid specmine dataset
#    check_2d_dataset(tomato_dataset)

## -----------------------------------------------------------------------------
#    # Print some statistics
#    sum_2d_dataset(tomato_dataset)

## -----------------------------------------------------------------------------
#    # Check the number of samples
#    num_samples(tomato_dataset)

## ---- fig.width=8, fig.height=8-----------------------------------------------
#    # Plotting 2D dataset wihtout giving any information on a metadata variable or samples
#    plot_2d_spectra(tomato_dataset, title_spectra = "2D tomato dataset (No information)")

## ---- fig.width=8, fig.height=8-----------------------------------------------
#    # Plotting 2D dataset giving metadata variable but no samples
#    plot_2d_spectra(tomato_dataset, title_spectra = "2D tomato dataset (Only metadata)", meta = "Factor.Value.Development.stage.")

## ---- fig.width=8, fig.height=8-----------------------------------------------
#    # Plotting 2D dataset giving metadata variable and sample information
#    plot_2d_spectra(tomato_dataset, title_spectra = "2D tomato dataset (Metadata and Samples)", meta = "Factor.Value.Development.stage.", spec_samples = c(1,2,20,21))

## ---- fig.width=8, fig.height=8-----------------------------------------------
#    # Plotting 2D dataset without giving metadata variable but giving sample information
#    plot_2d_spectra(tomato_dataset, title_spectra = "2D tomato dataset (Only samples)", spec_samples = c(1,2,20,21))

## -----------------------------------------------------------------------------
#    # Example without giving a threshold
#    reduced_tomato <- peak_detection2d(tomato_dataset, purp = "quantification")

## -----------------------------------------------------------------------------
#    # Example giving a threshold
#    reduced_tomato_th <- peak_detection2d(tomato_dataset, baseline_thresh = 50000)

## -----------------------------------------------------------------------------
#    # Missing value imputation in order to perform PCA analysis
#    reduced_tomato_mv <- missingvalues_imputation(reduced_tomato)

## -----------------------------------------------------------------------------
#    # Performing PCA
#    res_pca <- pca_analysis_dataset(reduced_tomato_mv)

## -----------------------------------------------------------------------------
#    # Necessary step to make the metadata variable factor
#    reduced_tomato_mv_factor <- convert_to_factor(reduced_tomato, "Factor.Value.Development.stage.")

## -----------------------------------------------------------------------------
#    #Plotting PCA
#    pca_scoresplot2D(reduced_tomato_mv_factor, res_pca, "Factor.Value.Development.stage.")

