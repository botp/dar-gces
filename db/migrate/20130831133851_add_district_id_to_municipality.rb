class AddDistrictIdToMunicipality < ActiveRecord::Migration
  def change
    add_column :municipalities, :district_id, :integer
  end
end
