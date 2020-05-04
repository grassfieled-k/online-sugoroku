class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :job_name
      t.integer :job_type_id
      t.integer :salary
      t.text :explanation

      t.timestamps
    end
  end
end
