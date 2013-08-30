class CreateBarangayFmrProjects < ActiveRecord::Migration
  def change
    create_table :barangay_fmr_projects do |t|
      t.string :tag
      t.integer :barangay_id
      t.string :name_of_fmr_project
      t.string :location
      t.string :type_of_project
      t.decimal :project_length
      t.decimal :project_length_provided
      t.decimal :percentage_completion
      t.date :date_project_started
      t.date :date_project_ended
      t.date :date_completed
      t.string :project_status

      t.timestamps
    end
  end
end
