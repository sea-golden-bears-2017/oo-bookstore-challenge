module Adoptable

  def adopt
  end

  def vet_check
    puts "#{self.title} #{self.name} has been checked by the vet and is healthy! Yay!"

    return 38.0 if self.class == Cat
    return 100000.01 if self.class == Unicorn
  end

  def print_adoption_info
  end

end
