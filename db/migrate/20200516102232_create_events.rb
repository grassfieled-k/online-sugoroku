class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.integer :event_type
      t.text :message
      t.integer :default_money
      t.integer :default_intelligence
      t.integer :default_strength
      t.integer :default_morality

      t.timestamps
    end
  end
end
