class CreateTruckJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :truck_jobs do |t|
      t.integer :truck_id
      t.integer :job_id

      t.timestamps
    end
  end
end
