class CreateSpaces < ActiveRecord::Migration[5.2]
  def change
    create_table :spaces do |t|
      t.string :map_id
      t.integer :position
      t.integer :event_type
      t.string :events_pool

      t.timestamps
    end
  end
end
