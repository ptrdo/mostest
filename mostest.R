# clear the workspace!
# this is important to zero-out ambient theme adjustments!
rm(list=ls())
ls()

# setwd("~/Source")

# Load necessary libraries
if (!require("jsonlite")) install.packages("jsonlite") # for showtext
if (!require("curl")) install.packages("curl") # for showtext
if (!require("showtext")) install.packages("showtext")
if (!require("ggplot2")) install.packages("ggplot2")
if (!require("svglite")) install.packages("svglite")
library(jsonlite)
library(curl)
library(showtext)
library(ggplot2)
library(svglite)

# Data
data_source <- "mostest-data.csv"  # Adjust the path if necessary

# Read the CSV file
data <- read.csv(data_source)

# Define the constant variable
VEP_2024 <- 244666890

# Prepare the dataframe
data$UID <- paste(sub(".*\\s", "", data$CANDIDATE), data$YEAR, sep = "_")  # Unique identifier
data$VEP_SHARE <- as.numeric(data$VEP_SHARE)  # Ensure numeric
data$VEP_SHARE_Percent <- paste0(sprintf("%.2f", data$VEP_SHARE * 100), "%")
data$VOTES_2024 <- as.integer(data$VEP_SHARE * VEP_2024)  # Calculate votes
data$MILLIONS <- paste0(sprintf("%.2f", data$VOTES_2024 / 1e6), "M")
data$LABELS <- paste0(" ", data$YEAR, " ", data$CANDIDATE)

# Force a sort, then rank
data <- data[order(data$VOTES_2024), ]
data$RANK <- rev(seq_len(nrow(data)))

# add fonts
font_add_google(name='Ubuntu Mono', family='ubuntu-mono')
showtext_auto(T)

# Plot
p <- ggplot(data, aes(x = VOTES_2024, y = reorder(UID, VOTES_2024), fill = PARTY)) + 
  ggtitle("Most Votes for Presidential Candidates, 1920-2024 (Adjusted to 2024 Population)\n") +
  geom_col(width = 1) +
  geom_text(
    aes(x = 0, label = LABELS),
    hjust = 0,
    size = 7,
    family = 'ubuntu-mono',
    color = 'white'
  ) +
  scale_fill_manual(
    values = c("R" = "#DE0909", "D" = "#03576A"),  # Assign colors to PARTY values
    guide = "none"  # Hide legend (optional, remove if you want the legend)
  ) +
  geom_text(
    aes(x = max(VOTES_2024) / 2.4, label = VEP_SHARE_Percent),  # Horizontally center text
    size = 7,
    family = 'ubuntu-mono',
    color = "white"
  ) +
  geom_text(
    aes(label = MILLIONS), 
    hjust = 1.2,
    size = 7,
    family = 'ubuntu-mono',
    color = 'white'
  ) +
  scale_x_continuous(expand = c(0, 0)) +
  scale_y_discrete(labels = data$RANK) +
  xlab(NULL) + ylab(NULL)

# format and plot
(renderer <- p +
    theme(
      plot.margin = margin(1.5,3,3,3,'lines'),
      plot.title = element_text(hjust = 0.5),
      line = element_blank(),
      axis.ticks = element_blank(),
      axis.text.x = element_blank(),
      axis.text.y = element_text(size = 24, hjust = 1),
      panel.ontop = FALSE,
      panel.background=element_rect(fill='beige',color='white'),
      text = element_text(size=24, family='ubuntu-mono'),
      title = element_text(size=22)
    )
)

renderer

# stop("Stopping short of SVG output.")

svglite(
  filename = "mostest.svg", # Adjust the path if necessary
  width = 20,
  height = 20, 
  pointsize = 30
)
plot(renderer) 
dev.off()


