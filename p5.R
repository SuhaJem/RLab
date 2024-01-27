student_data <- data.frame(
  Name = character(0),
  USN = character(0),
  Math_Score = numeric(0),
  Science_Score = numeric(0),
  History_Score = numeric(0),
  Attendance = numeric(0)
)

# Function to add student information
add_student <- function() {
  name <- readline("Enter student name: ")
  usn <- readline("Enter the USN: ")
  math_score <- as.numeric(readline("Enter math score: "))
  science_score <- as.numeric(readline("Enter science score: "))
  history_score <- as.numeric(readline("Enter history score: "))
  attendance <- as.numeric(readline("Enter attendance percentage: "))
  
  # Define student_data as a data frame if not defined
  if (exists("student_data")) {
    student_data <<- data.frame(
      Name = character(0),
      USN = character(0),
      Math_Score = numeric(0),
      Science_Score = numeric(0),
      History_Score = numeric(0),
      Attendance = numeric(0)
    )
  }
  
  # Add student data to the data frame
  student_data <<- rbind(student_data, data.frame(
    Name = name,
    USN = usn,
    Math_Score = math_score,
    Science_Score = science_score,
    History_Score = history_score,
    Attendance = attendance
  ))
  
  cat("Student information added.\n")
}

# Function to generate report
generate_report <- function() {
  if (nrow(student_data) == 0) {
    cat("No student data available.\n")
    return()
  }
  
  # Calculate average scores and identify students with low attendance
  student_data$Average_Score <- rowMeans(student_data[, c("Math_Score", "Science_Score", "History_Score")])
  students_with_low_attendance <- student_data[student_data$Attendance < 80, ]
  
  # Print the report
  cat("\nPerformance Report:\n")
  print(student_data[c("Name", "Average_Score", "Attendance")])
  
  # Print students with low attendance
  cat("\nAttendance Shortage:\n")
  print(students_with_low_attendance[c("Name", "Attendance")])
}

# Main program loop
while (TRUE) {
  cat("\n")
  cat("1. Add Student\n")
  cat("2. Generate Report\n")
  cat("3. Exit\n")
  choice <- readline("Enter your choice: ")
  
  if (choice == "1") {
    add_student()
  } else if (choice == "2") {
    generate_report()
  } else if (choice == "3") {
    cat("Exiting program. Goodbye!\n")
    break
  } else {
    cat("Invalid choice. Please try again.\n")
  }
}
