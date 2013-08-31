class RemoveProvinceIdFromMunicipality < ActiveRecord::Migration
  change_table :municipalities do |t|
    t.remove :province_id
  end
end
