class CreateAnnex1ProjectParticipants < ActiveRecord::Migration
  def change
    create_table :annex1_project_participants do |t|
      t.integer :project_id
      t.integer :entity_id

      t.timestamps
    end
  end
end
