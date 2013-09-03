class BarangayFmrProject < ActiveRecord::Base
  belongs_to :barangay
  has_many :barangay_fmr_project_completions
  belongs_to :fmr_project_typology
end
