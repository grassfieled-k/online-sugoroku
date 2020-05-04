class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :message
      t.integer :force_money
      t.integer :force_intelligence
      t.integer :force_physicality
      t.integer :force_sense
      t.integer :force_morality

      t.timestamps
    end
  end
end
