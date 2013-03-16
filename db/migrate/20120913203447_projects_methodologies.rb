class ProjectsMethodologies < ActiveRecord::Migration
  def change
    create_table :pr_meth, :id => false do |t|
      t.references :methodology
      t.references :project
    end
    add_index :pr_meth, [:project_id, :methodology_id]    
  end
end