json.array!(@barangay_fmr_projects) do |barangay_fmr_project|
  json.extract! barangay_fmr_project, :tag, :barangay_id, :name_of_fmr_project, :location, :type_of_project, :project_length, :project_length_provided, :percentage_completion, :date_project_started, :date_project_ended, :date_completed, :project_status
  json.url barangay_fmr_project_url(barangay_fmr_project, format: :json)
end