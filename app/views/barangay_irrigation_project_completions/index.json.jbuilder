json.array!(@barangay_irrigation_project_completions) do |barangay_irrigation_project_completion|
  json.extract! barangay_irrigation_project_completion, :barangay_irrigation_project_id, :tag, :name, :description, :percentage_completion, :date_confirmed, :user_id, :datetime_edited
  json.url barangay_irrigation_project_completion_url(barangay_irrigation_project_completion, format: :json)
end
