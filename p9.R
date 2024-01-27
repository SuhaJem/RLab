library(ggplot2)
library(gridExtra)

# Student data
students <- data.frame(
  Name = c("Ramesh", "Suresh", "Mukesh", "Rakesh", "Dharmesh", "Kamlesh", "Hitesh", "Sarvesh"),
  Scores = c(98, 74, 28, 76, 81, 69, 92, 13), 
  Attendance = c(100, 85, 73, 28, 94, 58, 96, 89)
)

# Scatter plot
scatter_plot <- ggplot(students, aes(x = Scores, y = Attendance)) +
  geom_point(color = "red") + 
  labs(title = "Scores vs Attendance", x = "Scores", y = "Attendance")

# Bar plot
bar_plot <- ggplot(students, aes(x = reorder(Name, Scores), y = Scores)) +
  geom_bar(stat = "identity", fill = "orange") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "Distribution of Scores", x = "Student Names", y = "Scores")

# Line plot
line_plot <- ggplot(students, aes(x = seq_along(Name), y = Scores)) +
  geom_line(color = "purple") +
  labs(title = "Trend of Scores Over Time", x = "Student Index", y = "Scores")

# Histogram plot
histogram_plot <- ggplot(students, aes(x = Scores)) +
  geom_histogram(binwidth = 5, fill = "darkgreen", color = "cyan") +
  scale_fill_brewer(palette = "Set3") +
  labs(title = "Distribution of Scores", x = "Scores", y = "Frequency")

# Arrange plots
grid.arrange(scatter_plot, bar_plot, line_plot, histogram_plot, ncol = 2)
