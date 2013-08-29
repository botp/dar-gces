class CreateBarangayLtiStatuses < ActiveRecord::Migration
  def change
    create_table :barangay_lti_statuses do |t|
      t.integer :barangay_id
      t.string :tag
      t.string :name
      t.text :description
      t.date :date_confirmed
      t.decimal :lad_scope
      t.decimal :working_scope
      t.decimal :vos
      t.decimal :ca
      t.decimal :vlt
      t.decimal :gol
      t.string :remarks
      t.integer :lad_male_arb
      t.integer :lad_female_arb
      t.decimal :leasehold_scope
      t.decimal :leasehold_accomplishment
      t.string :remarks2
      t.integer :lh_male_arb
      t.integer :lh_female_arb

      t.timestamps
    end
  end
end
