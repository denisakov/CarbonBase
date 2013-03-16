class CreateConsultants < ActiveRecord::Migration
  def change
    create_table :consultants do |t|
      t.integer :project_id
      t.integer :entity_id

      t.timestamps
    end
  end
end
