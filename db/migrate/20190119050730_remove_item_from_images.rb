class RemoveItemFromImages < ActiveRecord::Migration[5.0]
  def change
    remove_reference :images, :item
  end
end
