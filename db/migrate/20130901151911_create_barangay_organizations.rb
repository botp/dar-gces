class CreateBarangayOrganizations < ActiveRecord::Migration
  def change
    create_table :barangay_organizations do |t|
      t.integer :barangay_id
      t.string :tag
      t.string :name
      t.text :description
      t.string :location
      t.string :name_of_chairman
      t.integer :year_organized
      t.integer :organization_typology_id
      t.integer :registering_agency_id
      t.integer :year_registered
      t.string :registration_number
      t.date :date_confirmed

      t.timestamps
    end
  end
end
