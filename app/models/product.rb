class Product < ApplicationRecord
  belongs_to :owner
  has_many :purchases

  validates :price, :name, :description, presence: true
end
