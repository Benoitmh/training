class User < ApplicationRecord
  has_many :purchases

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :email, :phone_number, :password, :adress, presence: true
end
