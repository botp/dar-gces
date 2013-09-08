class ModifyProjectCompletionRelatedResources < ActiveRecord::Migration
  def change
    change_table :barangay_bridge_projects do |t|
      t.remove :project_length_provided
    end
    change_table :barangay_bridge_project_completions do |t|
      t.rename :percentage_completion, :project_length_provided
    end

    change_table :barangay_fmr_projects do |t|
      t.remove :project_length_provided
    end
    change_table :barangay_fmr_project_completions do |t|
      t.rename :percentage_completion, :project_length_provided
    end

  end
end

