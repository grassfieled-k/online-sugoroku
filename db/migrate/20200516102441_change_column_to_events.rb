class ChangeColumnToEvents < ActiveRecord::Migration[5.2]
  def up
    change_column :events, :id, :string
  end

  def down
    change_column :events, :id, :integer, auto_increment: true
  end
end
