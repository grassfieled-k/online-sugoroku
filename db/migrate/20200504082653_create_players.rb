class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :player_name
      t.integer :position
      t.integer :money
      t.integer :job_id
      t.integer :home_id
      t.integer :intelligence
      t.integer :physicality
      t.integer :sense
      t.integer :morality

      t.timestamps
    end
  end
end
