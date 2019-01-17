class RenameTypeColumnToSizes < ActiveRecord::Migration[5.0]
  def change
    rename_column :sizes, :type, :size
  end
end
