class RmColumnPercentageCompletionFromBarangayBridgeProjects < ActiveRecord::Migration
  def change
    change_table :barangay_bridge_projects do |t|
      t.remove :percentage_completion
    end
  end
end
