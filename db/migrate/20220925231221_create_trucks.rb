class CreateTrucks < ActiveRecord::Migration[7.0]
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :location
      t.integer :user_id
      t.integer :container_num

      t.timestamps
    end
  end
end
