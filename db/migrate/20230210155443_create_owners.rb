class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :phone_number
      t.string :adress

      t.timestamps
    end
  end
end
