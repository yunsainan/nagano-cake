class Address < ApplicationRecord
  def change
    create_table :addresses do |t|
      t.integer :customer_id, null: false
      t.string :name, null: false
      t.string :post_code, null: false
      t.string :address, null: false
    end
  end
end
