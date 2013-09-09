class ModifyProjectCompletionRelatedResourcesPart2 < ActiveRecord::Migration
  def change
    change_table :barangay_irrigation_projects do |t|
      t.remove :service_area_provided
    end
    change_table :barangay_irrigation_project_completions do |t|
      t.rename :percentage_completion, :service_area_provided
    end

  end
end
