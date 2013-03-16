class CreateMethodologies < ActiveRecord::Migration
  def change
    create_table :methodologies do |t|
      t.string :meth_number
      t.string :meth_title
      t.string :meth_version
      t.boolean :meth_active

      t.timestamps
    end
  end
end