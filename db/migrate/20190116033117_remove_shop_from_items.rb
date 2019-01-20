class RemoveShopFromItems < ActiveRecord::Migration[5.0]
  def change
    remove_reference :items, :shop
  end
end
