module Appraisable
  class InvalidCondition < StandardError
  end

  def reject?(condition)
    return true if @condition == 'bad' || @condition == 'new'
    false
  end

  def find_discount(condition)
    return 0.25 if condition == 'good'
    return 0.5 if condition == 'okay'
  end

  def appraise(condition, price)
    raise InvalidCondition if reject?(condition)

    discount = find_discount(condition)
    price - (price * discount)
  end
end
