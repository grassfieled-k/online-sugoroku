class RenameColumnToGames < ActiveRecord::Migration[5.2]
  def change
    rename_column :games, :id, :game_id
  end
end
