class Purchase < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :product_id, :user_id, :total_price, presence: true
end
