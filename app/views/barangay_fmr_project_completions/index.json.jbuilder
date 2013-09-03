json.array!(@barangay_fmr_project_completions) do |barangay_fmr_project_completion|
  json.extract! barangay_fmr_project_completion, :barangay_fmr_project_id, :tag, :name, :description, :percentage_completion, :date_confirmed, :user_id, :datetime_edited
  json.url barangay_fmr_project_completion_url(barangay_fmr_project_completion, format: :json)
end
