class CreateDesignatedNationalAuthorities < ActiveRecord::Migration
  def change
    create_table :designated_national_authorities do |t|
      t.integer :project_id
      t.integer :entity_id

      t.timestamps
    end
  end
end
