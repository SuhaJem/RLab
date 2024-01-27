# define the arrays
inventory_items <- character(0)
inventory_quantities <- numeric(0)

# implement functions 
# to add 
add_item <- function(item, quantity) {
  inventory_items <<- c(inventory_items, item)
  inventory_quantities <<- c(inventory_quantities, quantity)
  cat("Item added to the inventory\n")
}

# update the quantity
update_quantity <- function(item, new_quantity) {
  if (item %in% inventory_items) {
    item_index <- which(inventory_items == item)
    inventory_quantities[item_index] <<- new_quantity
    cat("Quantity updated\n")
  } else {
    cat("Item not found in inventory\n")
  }
}

# display 
display_items <- function() {
  cat("Inventory items and quantities\n")
  for (i in 1:length(inventory_items)) {
    cat(sprintf("%s: %d\n", inventory_items[i], inventory_quantities[i]))
  }
}

# main program 
while (TRUE) {
  cat("\n------------------------------------\n")
  cat("Menu\n")
  cat("1. Add\n")
  cat("2. Update\n")
  cat("3. Display\n")
  cat("4. Exit\n")
  ch <- as.integer(readline("Enter your choice: "))
  
  if (ch == 1) {
    item <- readline("Enter the item name: ")
    quantity <- as.integer(readline("Enter the quantity: "))
    add_item(item, quantity)
  } else if (ch == 2) {
    item <- readline("Enter the item: ")
    new_quantity <- as.integer(readline("Enter the new quantity: "))
    update_quantity(item, new_quantity)
  } else if (ch == 3) {
    display_items()
  } else if (ch == 4) {
    cat("Exiting the program. Goodbye.\n")
    break
  } else {
    cat("Invalid Choice\n")
  }
}
  