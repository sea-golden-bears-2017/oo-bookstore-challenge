module POS

  def self.sell(*isbn)
    # for all the isbn in that sale add the cost of each one
    isbn.reduce do |sum, isbn|
      self.sell_one_book(isbn)
    end
  end

  def self.sell_one_book(isbn)
    # gets cost of ONE book referencing the isbn
    store.sale(isbn)
  end
end
