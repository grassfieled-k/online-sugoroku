class ChangeColumnToGames < ActiveRecord::Migration[5.2]
  def up
    change_column :games, :id, :string
  end

  def down
    change_column :games, :id, :integer, auto_increment: true
  end
end
