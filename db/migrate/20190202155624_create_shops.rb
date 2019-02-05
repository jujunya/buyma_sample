class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name, null: false, unique: true
      t.text   :shop_introduction, null: false
      t.string :shop_introduction, null: false
      t.string :self_introduction, null:false
      t.string :string, null:false
      t.string :heder_image
      t.timestamps
    end
  end
end
