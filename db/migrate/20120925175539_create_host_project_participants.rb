class CreateHostProjectParticipants < ActiveRecord::Migration
  def change
    create_table :host_project_participants do |t|
      t.integer :project_id
      t.integer :entity_id

      t.timestamps
    end
  end
end
