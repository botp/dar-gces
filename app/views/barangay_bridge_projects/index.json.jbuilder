json.array!(@barangay_bridge_projects) do |barangay_bridge_project|
  json.extract! barangay_bridge_project, :tag, :barangay_id, :name_of_bridge_project, :location, :type_of_project, :project_length, :project_length_provided, :percentage_completion, :date_project_started, :date_project_ended, :date_completed, :project_status
  json.url barangay_bridge_project_url(barangay_bridge_project, format: :json)
end
