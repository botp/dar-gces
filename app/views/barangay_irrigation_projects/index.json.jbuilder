json.array!(@barangay_irrigation_projects) do |barangay_irrigation_project|
  json.extract! barangay_irrigation_project, :barangay_id, :irrigation_project_typology_id, :tag, :name_of_irrigation_project, :location, :project_service_area, :service_area_provided, :date_project_started, :date_project_ended, :date_actually_completed, :project_status, :beneficiaries_count_male_arb, :beneficiaries_count_male_non_arb, :beneficiaries_count_female_arb, :beneficiaries_count_female_non_arb, :user_id
  json.url barangay_irrigation_project_url(barangay_irrigation_project, format: :json)
end
