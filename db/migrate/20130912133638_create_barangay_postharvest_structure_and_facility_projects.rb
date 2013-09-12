class CreateBarangayPostharvestStructureAndFacilityProjects < ActiveRecord::Migration
  def change
    create_table :barangay_postharvest_structure_and_facility_projects do |t|
      t.integer :barangay_id
      t.integer :postharvest_structure_and_facility_typology_id
      t.string :tag
      t.string :name
      t.text :description
      t.integer :count_of_units_provided
      t.boolean :status
      t.date :date_confirmed
      t.integer :user_id

      t.timestamps
    end
  end
end
