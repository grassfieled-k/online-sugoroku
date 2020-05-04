class RenameColumnToPlayers < ActiveRecord::Migration[5.2]
  def change
    rename_column :players, :id, :player_id
  end
end
