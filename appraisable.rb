module Appraisable
  def self.appraise(product)
    product.cost
  end

  def self.reject(product)
    product.cost < product.price
  end
end
