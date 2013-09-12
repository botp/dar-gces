json.array!(@barangay_postharvest_structure_and_facility_projects) do |barangay_postharvest_structure_and_facility_project|
  json.extract! barangay_postharvest_structure_and_facility_project, :barangay_id, :postharvest_structure_and_facility_typology_id, :tag, :name, :description, :count_of_units_provided, :status, :date_confirmed, :user_id
  json.url barangay_postharvest_structure_and_facility_project_url(barangay_postharvest_structure_and_facility_project, format: :json)
end
