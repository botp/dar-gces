class CreateBarangayPopulations < ActiveRecord::Migration
  def change
    create_table :barangay_populations do |t|
      t.string :tag
      t.integer :barangay_id
      t.string :name
      t.text :description
      t.date :date_info_gathered
      t.integer :arb_male
      t.integer :arb_female
      t.integer :non_arb_male
      t.integer :non_arb_female
      t.integer :arb_household
      t.integer :non_arb_household

      t.timestamps
    end
  end
end
