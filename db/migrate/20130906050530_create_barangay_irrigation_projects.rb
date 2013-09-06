class CreateBarangayIrrigationProjects < ActiveRecord::Migration
  def change
    create_table :barangay_irrigation_projects do |t|
      t.integer :barangay_id
      t.integer :irrigation_project_typology_id
      t.string :tag
      t.string :name_of_irrigation_project
      t.string :location
      t.decimal :project_service_area
      t.decimal :service_area_provided
      t.date :date_project_started
      t.date :date_project_ended
      t.date :date_actually_completed
      t.boolean :project_status
      t.integer :beneficiaries_count_male_arb
      t.integer :beneficiaries_count_male_non_arb
      t.integer :beneficiaries_count_female_arb
      t.integer :beneficiaries_count_female_non_arb
      t.integer :user_id

      t.timestamps
    end
  end
end
