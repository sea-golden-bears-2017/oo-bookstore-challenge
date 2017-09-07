module Appraisable
  def appraise
    @cost
  end

  def reject?
    @cost < @price
  end
end
