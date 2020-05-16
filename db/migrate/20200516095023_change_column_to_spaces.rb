class ChangeColumnToSpaces < ActiveRecord::Migration[5.2]
  def up
    change_column :spaces, :id, :string
  end

  def down
    change_column :spaces, :id, :integer, auto_increment: true
  end
end
