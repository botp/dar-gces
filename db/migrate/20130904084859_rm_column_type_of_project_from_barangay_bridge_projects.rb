class RmColumnTypeOfProjectFromBarangayBridgeProjects < ActiveRecord::Migration
  def change
    change_table :barangay_bridge_projects do |t|
      t.remove :type_of_project
      t.column :bridge_project_typology_id, :integer
    end
  end
end
