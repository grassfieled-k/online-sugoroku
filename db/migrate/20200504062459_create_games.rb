class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :game_name
      t.integer :map_id

      t.timestamps
    end
  end
end
