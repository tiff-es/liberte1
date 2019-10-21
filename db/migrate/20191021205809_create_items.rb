class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.float :price
      t.string :style
      t.string :size
      t.string :color
      t.integer :category_id
      t.integer :inventory

      t.timestamps
    end
  end
end
