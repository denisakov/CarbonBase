class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :cdm_id
      t.string :ref
      t.string :title
      t.string :status
      t.string :methodology
      t.string :pr_type
      t.string :sub_type
      t.date :reg
      t.string :pr_url

      t.timestamps
    end
  end
end
