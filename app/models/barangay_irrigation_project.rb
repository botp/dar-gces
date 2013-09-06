class BarangayIrrigationProject < ActiveRecord::Base
  belongs_to :barangay
  belongs_to :irrigation_project_typology
  has_many   :barangay_irrigation_project_completions
end
