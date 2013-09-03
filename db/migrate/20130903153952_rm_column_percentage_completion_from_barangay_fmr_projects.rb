class RmColumnPercentageCompletionFromBarangayFmrProjects < ActiveRecord::Migration
  def change
    change_table :barangay_fmr_projects do |t|
      t.remove :percentage_completion
    end
  end
end
