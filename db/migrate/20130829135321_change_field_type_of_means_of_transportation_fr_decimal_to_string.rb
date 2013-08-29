class ChangeFieldTypeOfMeansOfTransportationFrDecimalToString < ActiveRecord::Migration
  def change
    change_column :barangay_geographicals, :means_of_transportation, :string
  end
end
