module BarangayFmrProjectsHelper
  def get_project_completion
    v = self.barangay_fmr_project_completions.last
    v && v.percentage_completion || 0
  end

end
