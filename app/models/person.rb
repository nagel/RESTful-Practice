class Person < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, uniqueness: true
  validates :email, uniqueness: true


  def friendly_updated_at
    self.updated_at.strftime("%b %e, %l:%M %p")
  end 

  def full_name
    "#{first_name} #{last_name}"
  end 

end
