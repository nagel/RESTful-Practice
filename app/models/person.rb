class Person < ApplicationRecord

  def friendly_updated_at
    self.updated_at.strftime("%b %e, %l:%M %p")
  end 

  def full_name
    "#{first_name} #{last_name}"
  end 

end
