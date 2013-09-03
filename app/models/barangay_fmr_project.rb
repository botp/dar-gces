class BarangayFmrProject < ActiveRecord::Base
  belongs_to :barangay
  has_many :barangay_fmr_project_completions
  belongs_to :fmr_project_typology


  def get_project_completion
    v = barangay_fmr_project_completions.last
    v && v.percentage_completion || 0
  end
  
end
