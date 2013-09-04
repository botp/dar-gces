json.array!(@barangay_bridge_project_completions) do |barangay_bridge_project_completion|
  json.extract! barangay_bridge_project_completion, :barangay_bridge_project_id, :tag, :name, :description, :percentage_completion, :date_confirmed, :user_id, :datetime_edited
  json.url barangay_bridge_project_completion_url(barangay_bridge_project_completion, format: :json)
end
