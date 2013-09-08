class BarangayBridgeProject < ActiveRecord::Base
  belongs_to :barangay
  has_many :barangay_bridge_project_completions
  belongs_to :bridge_project_typology


  def get_project_completion
    v = barangay_bridge_project_completions.last
    v && v.project_length_provided || 0
  end
end
