class ChangeColumnToPlayers < ActiveRecord::Migration[5.2]
  def up
    change_column :players, :id, :string
  end

  def down
    change_column :players, :id, :integer, auto_increment: true
  end
end
