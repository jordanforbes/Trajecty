class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :origin
      t.string :destination
      t.decimal :cost

      t.timestamps
    end
  end
end
