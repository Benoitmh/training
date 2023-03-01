class ModifyPricePurchases < ActiveRecord::Migration[7.0]
  def change
    rename_column :purchases, :total_price, :decimal
  end
end
