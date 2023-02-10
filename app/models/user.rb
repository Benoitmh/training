class User < ApplicationRecord
  has_many :purchases

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :email, :phone_number, :password, :adress, presence: true
  validates :email, uniqueness: true, format: { with: /\A.*@.*\.com\z/ }
  # ajouter un format pour le numéro de tel
  validates :phone_number, uniqueness: true
  validates :last_name, :first_name, length: { minimum: 2 }
end
