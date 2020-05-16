class RenameColumnToSpaces < ActiveRecord::Migration[5.2]
  def change
    rename_column :spaces, :id, :space_id
  end
end
