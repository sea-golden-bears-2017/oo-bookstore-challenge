module PointOfSale
  def sell(book, inventory)
    inventory.delete(book.isbn)
    @cash_register += book.price
  end

  def purchase(book, inventory)
    inventory[book.isbn] = book
  end
end
