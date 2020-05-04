class RenameColumnToMaps < ActiveRecord::Migration[5.2]
  def change
    rename_column :maps, :id, :map_id
  end
end
