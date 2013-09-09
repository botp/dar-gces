class BarangayIrrigationProject < ActiveRecord::Base
  belongs_to :barangay
  belongs_to :irrigation_project_typology
  has_many   :barangay_irrigation_project_completions

  def get_project_completion
    v = barangay_irrigation_project_completions.last
    v && v.service_area_provided || 0
  end
end
