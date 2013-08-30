class CreateBarangayTrainings < ActiveRecord::Migration
  def change
    create_table :barangay_trainings do |t|
      t.string :tag
      t.integer :barangay_id
      t.string :training_title
      t.text :description
      t.string :source_of_funds
      t.decimal :amount
      t.string :conducted_by
      t.date :date_conducted
      t.integer :particpants_male_arb
      t.integer :participants_male_non_arb
      t.integer :participants_female_arb
      t.integer :participants_female_non_arb

      t.timestamps
    end
  end
end
