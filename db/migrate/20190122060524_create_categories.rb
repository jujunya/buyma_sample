class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string  :top_category , null: false, index: true, unique: true
      t.string  :sub_category , null: false, index: true, unique: true
      t.timestamps
    end
  end
end
