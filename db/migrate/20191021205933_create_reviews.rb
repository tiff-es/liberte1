class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :content
      t.integer :customer_id
      t.integer :item_id

      t.timestamps
    end
  end
end
