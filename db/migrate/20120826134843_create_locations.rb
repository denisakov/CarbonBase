class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :project_id
      t.string :ref
      t.float :lat
      t.float :lng
      t.string :region
      t.string :sub_region
      t.string :country
      t.string :province

      t.timestamps
    end
  end
end
