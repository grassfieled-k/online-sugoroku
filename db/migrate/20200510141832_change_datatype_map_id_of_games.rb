class ChangeDatatypeMapIdOfGames < ActiveRecord::Migration[5.2]
  def up
    change_column :games, :map_id, :string
  end

  def down
    change_column :games, :map_id, :integer
  end
end
