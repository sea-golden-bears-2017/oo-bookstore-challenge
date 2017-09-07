module PointOfSale

def purchase(till, item)
  item.increase
  till -= item.cost
end

def sell(till, item)
  item.decrease
  till += item.price
end

def return_item(till, item)
  item.increase
  till -= item.price
end


end
