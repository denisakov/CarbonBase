class AddColumnToProject < ActiveRecord::Migration
  def change
    add_column :projects, :pr_url, :string
  end
end
