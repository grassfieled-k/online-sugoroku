class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :map_id
      t.integer :position
      t.string :event_id
      t.integer :event_coefficient
      t.integer :force_money
      t.integer :force_intelligence
      t.integer :force_physicality
      t.integer :force_sense
      t.integer :force_morality

      t.timestamps
    end
  end
end
