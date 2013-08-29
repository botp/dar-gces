class CreateBarangayGeographicals < ActiveRecord::Migration
  def change
    create_table :barangay_geographicals do |t|
      t.string :tag
      t.string :name
      t.text :description
      t.date :date_info_gathered
      t.decimal :land_area
      t.decimal :agricultural_area
      t.string :terrain
      t.string :ecosystem
      t.decimal :distance_from_town_proper
      t.decimal :means_of_transportation

      t.references :barangay
      t.timestamps
    end
  end
end
