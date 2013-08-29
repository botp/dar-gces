class CreateBarangayPoliticals < ActiveRecord::Migration
  def change
    create_table :barangay_politicals do |t|
      t.string :tag
      t.integer :barangay_id
      t.string :name
      t.text :description
      t.date :date_info_gathered
      t.string :barangay_chairman
      t.string :barc_chairman

      t.timestamps
    end
  end
end
