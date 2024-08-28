media_files <- list.files("media")
lines <- list.files(pattern = "qmd$") |>
  lapply(readLines) |>
  unlist()

# in folder, but not in scripts
in_script_df <- purrr::map_df(media_files, function(f) {
  data.frame(
    file = f,
    in_script = any(grepl(f, lines, fixed = TRUE))
  )
})

setwd("media")
delete <- in_script_df$file[!in_script_df$in_script]
delete |>
  setdiff(c("machine-learning.pdf", "machine-learning.pptx")) |>
  unlink()
