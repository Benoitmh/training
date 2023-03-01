class ModifyPriceProduct < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :price, :decimal
  end
end
