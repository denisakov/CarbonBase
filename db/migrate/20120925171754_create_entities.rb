class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :ent_title

      t.timestamps
    end
  end
end
