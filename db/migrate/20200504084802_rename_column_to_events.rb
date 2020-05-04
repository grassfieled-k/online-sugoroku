class RenameColumnToEvents < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :id, :event_id
  end
end
