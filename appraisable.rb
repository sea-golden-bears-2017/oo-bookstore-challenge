
module Appraisable

  def reject?
    [true, false].sample
  end

  def appraise
    (5..30).to_a.sample
  end
end
