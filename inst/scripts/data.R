library(airway)
library(zebrafishRNASeq)
library(dplyr)

## airway data
data("airway")
airway_sample_data <- colData(airway) |>
    as.data.frame() |>
    relocate(Run) |>
    as_tibble()
airway_gene_data <- rowData(airway) |>
    as.data.frame() |>
    as_tibble()
airway_expr_data <- assay(airway) |>
    as.data.frame() |>
    tibble::rownames_to_column(var = "gene_id") |>
    as_tibble()

write.table(
    x = airway_sample_data,
    file = file.path("inst", "extdata", "airway_sample_data.tsv"),
    sep = "\t",
    row.names = TRUE
)
write.table(
    x = airway_gene_data,
    file = file.path("inst", "extdata", "airway_gene_data.tsv"),
    sep = "\t",
    row.names = TRUE
)
write.table(
    x = airway_expr_data,
    file = file.path("inst", "extdata", "airway_expr_data.tsv"),
    sep = "\t",
    row.names = TRUE
)

## zebrafish data
data("zfGenes")
write.table(
    x = zfGenes,
    file = file.path("inst", "extdata", "zgenes.tsv"),
    sep = "\t",
    row.names = TRUE
)
