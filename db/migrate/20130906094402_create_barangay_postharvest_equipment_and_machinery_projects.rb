class CreateBarangayPostharvestEquipmentAndMachineryProjects < ActiveRecord::Migration
  def change
    create_table :barangay_postharvest_equipment_and_machinery_projects do |t|
      t.integer :barangay_id
      t.string :tag
      t.string :name
      t.text :description
      t.integer :postharvest_equipment_and_machinery_typology_id
      t.integer :count_of_units_provided
      t.boolean :status

      t.timestamps
    end
  end
end
