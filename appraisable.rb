module Appraisable
  def reject(item)
    if item.condition == 'mint' || item.condition == 'near mint'
      true
    else
      false
    end
  end
end
