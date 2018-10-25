class User < ApplicationRecord
  has_many :People

  has_secure_password
  validates :email, presence: true, uniqueness: true

end
