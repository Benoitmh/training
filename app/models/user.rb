class User < ApplicationRecord
  has_many :purchases

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :email, :phone_number, :password, :adress, presence: true
  validates :email, uniqueness: true, format: { with: /\A.*@.*\.com\z/ }
  validates :phone_number, uniqueness: true, format: { with: /^0[1-9]([-. ]?[0-9]{2}){4}$/ }
  validates :last_name, :first_name, length: { minimum: 2 }
end
