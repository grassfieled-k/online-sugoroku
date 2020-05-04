class ChangeColumnToMaps < ActiveRecord::Migration[5.2]
  def up
    change_column :maps, :id, :string
  end

  def down
    change_column :maps, :id, :integer, auto_increment: true
  end
end
