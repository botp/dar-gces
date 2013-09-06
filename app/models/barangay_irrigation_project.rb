class BarangayIrrigationProject < ActiveRecord::Base
  belongs_to :barangay
  belongs_to :irrigation_project_typology

end
