# Constants 
num_students <- 5
num_courses <- 5

# Student names 
student_names <- c("Ash", "Misty", "Brock", "Pikachu", "Charmander")

# Input the course marks
course_marks <- matrix(c(
  1, 2, 3, 4, 5,
  10, 20, 30, 40, 50,
  23, 26, 28, 29, 20,
  36, 63, 45, 54, 78,
  90, 91, 95, 98, 99
), nrow = num_students, byrow = TRUE)

print(course_marks)

# Initialize the list 
student_records <- list()

# Loop for each student
for (i in 1:num_students) {
  student_name <- student_names[i]
  total_marks <- sum(course_marks[i, ])
  average <- total_marks / num_courses
  
  # Determine the grade of each student
  grade <- ifelse(average >= 90, "A", 
                  ifelse(average >= 80, "B",
                         ifelse(average >= 70, "C",
                                ifelse(average >= 60, "D", "E"))))
  
  student_record <- list(name = student_name, marks = course_marks[i, ], average = average, grade = grade)
  
  student_records <- append(student_records, list(student_record))
}

# Display the record 
cat("\nStudent Report\n")
for (i in student_records) {
  cat("\n Name:",i$name)
  cat("\n Marks:",i$marks)
  cat("\n Average:", i$average)
  cat("\n Grade:", i$grade)                      
  cat("\n ")
}
  
  
  