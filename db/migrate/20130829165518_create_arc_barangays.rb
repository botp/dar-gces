class CreateArcBarangays < ActiveRecord::Migration
  def change
    create_table :arc_barangays do |t|
      t.integer :arc_id
      t.integer :barangay_id
      t.string :tag
      t.string :name
      t.text :description
      t.date :date_confirmed

      t.timestamps
    end
  end
end
