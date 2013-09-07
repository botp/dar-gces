class AddFieldsDateconfirmedUseridToBarangayPostharvestEquipmentAndMachineryProjects < ActiveRecord::Migration
  def change
    change_table :barangay_postharvest_equipment_and_machinery_projects do |t|
      t.date :date_confirmed
      t.integer :user_id
    end
  end
end
