class AddPlayerNoToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :player_no, :integer
  end
end
