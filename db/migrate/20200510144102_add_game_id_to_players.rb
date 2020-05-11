class AddGameIdToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :game_id, :string
  end
end
