class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :item_num, null: false, unique: true
      t.string :name, null: false, index: true
      t.integer :price, null: false
      t.integer :stock, null: false
      t.text :item_description, null: false
      t.references :category, foregn_key: true
      t.references :shop, foregn_key: true
      t.timestamps
    end
  end
end
