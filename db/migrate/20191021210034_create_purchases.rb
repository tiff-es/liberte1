class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.integer :customer_id
      t.integer :item_id

      t.timestamps
    end
  end
end
