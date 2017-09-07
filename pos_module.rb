module PointOfSale
  def pos_sell(book, inventory, till)
    inventory[book.isbn].reduce
    till + book.price
  end

  def pos_purchase(book, inventory, till)
    inventory[book.isbn].increase
    till - book.price
  end

  def inventory(book, inventory)
    inventory[book.isbn]
  end

  # def return(book)
end
