library(magrittr)
library(palmerpenguins)

## nested
length(head(letters))

## magrittr pipe
letters %>%
    head %>%
    length

## native pipe
letters |>
    head() |>
    length()

## Tidy vs non-tidy data
penguins |>
    head()
zgenes_path <- system.file(
    "extdata", "zgenes.tsv", package = "ciatej2024"
)
zgenes <- read.table(zgenes_path, sep = "\t", header = TRUE, row.names = 1)

##
