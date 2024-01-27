
# program 1

# List of products 
all_products <- list(
  list(name = "Apple", price = 0.5),
  list(name = "Banana", price = 0.6),
  list(name = "Milk", price = 1),
  list(name = "Bread", price = 5),
  list(name = "Eggs", price = 10)
)

# Display the list of all products
cat("Name \t Price \n")
cat("************************\n")
for (i in all_products) {
  cat(sprintf("%s \t $%.2f\n", i$name, i$price))
}

# Initialize the shopping cart as an empty list
shopping_cart <- list()

# Purchase list
cart_add <- list(
  list(name = "Apple", quantity = 3),
  list(name = "Banana", quantity = 9),
  list(name = "Bread", quantity = 10)
)

# Store the items in the purchased list
for (item in cart_add) {
  product_name <- item$name
  qnty <- item$quantity
  
  # Find the product if it is available in the store or not
  product <- NULL
  for (p in all_products) {
    if (p$name == product_name) {
      product <- p
      break
    }
  }
  
  # If the product is available in the store, add it to the shopping cart
  if (!is.null(product)) {
    cart_item <- list(name = product$name, price = product$price, quantity = qnty)
    shopping_cart <- append(shopping_cart, list(cart_item))
    cat("Item added to the inventory\n")
  } else {
    cat("Item not added to the inventory\n")
  }
}

# Calculate and display the result
sub_total <- 0
cat("\nReceipt\n")
cat("---------------\n")
for (item in shopping_cart) {   
  item_subtotal <- item$price * item$quantity
  cat(sprintf("%s(%d units) - Price: $%.2f - Subtotal: $%.2f\n", item$name, item$quantity, item$price, item_subtotal))
  sub_total <- sub_total + item_subtotal
}

# Calculate tax amount
tax_rate <- 0.08
tax_amount <- sub_total * tax_rate
total_cost <- sub_total + tax_amount

cat(sprintf("\nSubtotal: $%.2f\n", sub_total))
cat(sprintf("Tax amount: $%.2f\n", tax_amount))
cat(sprintf("Total cost: $%.2f\n", total_cost))
