class Product < ApplicationRecord
  belongs_to :owner
  has_many :purchases
end
