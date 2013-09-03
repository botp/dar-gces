class RemoveFieldTypeOfProject < ActiveRecord::Migration
  def change
    # remove :barangay_fmr_projects, :type_of_project

    change_table :barangay_fmr_projects do |t|
      t.remove :type_of_project
      t.column :fmr_project_typology_id, :integer
    end
  end
end

