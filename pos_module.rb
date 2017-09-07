module PointOfSale
  def pos_sell(book, inventory, till)
    inventory[book.isbn].reduce
    till + discount(book)
  end

  def pos_purchase(book, inventory, till)
    inventory[book.isbn].increase
    till - book.price
  end

  def pos_return(book, inventory, till)
    inventory[book.isbn].increase
    till - book.price
  end

  def inventory(book, inventory)
    inventory[book.isbn]
  end

  def discount(book)
    if book.discounted == true
      book.price * 0.85
    else
      book.price
    end
  end

  # def return(book)
end
