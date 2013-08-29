class AddBarangayIdToBarangayGeographical < ActiveRecord::Migration
  change_table :barangay_geographicals do |t|
    t.references :barangay
  end
end
