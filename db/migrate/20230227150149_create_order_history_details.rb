class CreateOrderHistoryDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_history_details do |t|
      
      t.integer :item_id, null: false
      t.integer :order_id, null: false
      t.integer :price, null: false
      t.string :amount, null: false
      t.integer :making_status, null: false

      t.timestamps
    end
  end
end
