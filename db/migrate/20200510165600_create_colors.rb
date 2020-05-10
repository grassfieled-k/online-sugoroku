class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string :color
      t.integer :for_player_number

      t.timestamps
    end
  end
end
