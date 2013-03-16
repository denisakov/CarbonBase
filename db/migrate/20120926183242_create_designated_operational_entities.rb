class CreateDesignatedOperationalEntities < ActiveRecord::Migration
  def change
    create_table :designated_operational_entities do |t|
      t.integer :project_id
      t.integer :entity_id

      t.timestamps
    end
  end
end
