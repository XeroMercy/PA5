# cat_argument_matching.R
# Wesley Sutton
# 10/4/26
# demonstrate cat function and argument matching in R

# Demonstrate a simple use of the cat function.
cat("The cat function can display multiple values.\n")


# Create examples of the three argument matching methods.
partial_example <- paste0(
  "cat(\"Hello\", se=\"-\")"
)

positional_example <- paste0(
  "cat(\"Hello\", ",
  "\"World\")"
)

exact_example <- paste0(
  "cat(\"Hello\", sep=\"-\", ",
  "fill=FALSE)"
)


# Create a data frame containing the argument matching examples.
cat_data <- data.frame(
  type = c("Partial", "Positional", "Exact"),
  example = c(
    partial_example,
    positional_example,
    exact_example
  )
)


# Display the original data frame.
print(cat_data)


# Save the data frame to a CSV file.
file_name <- "cat_argument_matching.csv"

write.csv(
  cat_data,
  file_name,
  row.names = FALSE
)


# Verify that the CSV file was created.
print(file.exists(file_name))


# Remove the data frame from the environment.
rm(cat_data)


# Read the CSV file to restore the data frame.
cat_data <- read.csv(
  file_name,
  stringsAsFactors = FALSE
)


# Verify that the data frame was restored.
print(exists("cat_data"))


# Display the restored data frame.
print(cat_data)


# View the restored data frame.
View(cat_data)