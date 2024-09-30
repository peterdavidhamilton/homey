class CreateProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :projects do |t|
      t.integer :status, default: 0

      t.timestamps
    end
    add_index :projects, :id
  end
end
