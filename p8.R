# program 8
# matrix creation 
matrix_a<-matrix(2:10, nrow = 3, ncol=3)
matrix_b<- matrix(16:24, nrow=3, ncol=3)

print(matrix_a)
print(matrix_b)

# perform the operation 
#add the two matrix 
sum<- matrix_a + matrix_b
print(sum)

# scalar multiplication
scalar<- matrix_a*2
print(scalar)

#transpose 
transpose<-t(matrix_a)
print(transpose)

# product 
product<- matrix_a * matrix_b
print(product)

#matrix multiplication
matrixmul<- matrix_a %*% matrix_b
print(matrixmul)

#generate a statistics 
suma<-sum(matrix_a)
meana<-mean(matrix_a)
sda<-sd(matrix_a)

cat("Sum:",suma)
cat("\nMean", meana)
cat("\nStandard Deviation:", sda)

# plot the matrix
library(pheatmap)
pheatmap(matrix_a, main="Heatmap")
