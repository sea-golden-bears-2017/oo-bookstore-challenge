module Appraisal

  def appraise(cost, condition, price)
    case condition
      when "like-new"
        cost_now = cost * 0.8
      when "used"
          cost_now = cost * 0.6
      when "abused"
        cost_now = cost * 0.3
    end
  return reject(cost,cost_now, price)

  end

def reject(cost,cost_now, price)
  price_now = cost_now * 2
  if price_now - cost_now < 5
    return "reject"
  end
  cost_now.round(2)
end



end
