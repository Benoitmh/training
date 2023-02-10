class Owner < ApplicationRecord
  has_many :product
  has_many :purchases, through: :products
end
