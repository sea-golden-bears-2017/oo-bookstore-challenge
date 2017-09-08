class Inventory
    attr_accessor :books, :tshirts, :coffee 

def initialize(args)
    @books = args[:books]
    @tshirts = args[:tshirts]
    @coffee = args[:coffee]
end  

def update_inventory(id, qty)
    if id < 1000
        update_books(id, qty)
    elsif id > 999 && id < 1500 
        update_tshirts(id, qty)
    else 
        update_coffee(id, qty)
    end
end

def update_books(id, qty)
    @books += qty
end

def update_tshirts(id, qty)
    @tshirts += qty 
end

def update_coffee(id, qty)
    @coffee += qty 
end

end



