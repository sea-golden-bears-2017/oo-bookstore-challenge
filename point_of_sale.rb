
module PointOfSale

    def sell_item
        if apply_discount?
            price *= 0.85
        end
        @revenue += price 
        update_inventory(id, qty)
    end
    
    def purchase_item
        @revenue += cost 
        update_inventory(id, qty)
    end

    def return_item
        @revenue += price 
        update_inventory(id, qty)
        
    end
    
    def apply_discount?
      if rewards_member?
        item.price *= 0.85 

    end

    def rewards_member?
        if cash_register.membership
        true
        else 
        false
        end


    end


end
