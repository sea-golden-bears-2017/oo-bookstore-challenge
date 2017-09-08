module Appraisable
  def reject(item)
    if item.condition == 'mint' || item.condition == 'near mint'
      true
    else
      false
    end
  end

  def appraise(item)
    return 0.5 if item.condition == 'mint'
    return 0.4 if item.condition == 'near mint'
  end

end
