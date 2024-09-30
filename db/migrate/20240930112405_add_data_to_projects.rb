class AddDataToProjects < ActiveRecord::Migration[7.2]
  def change
    add_column :projects, :data, :json, default: []
  end
end
