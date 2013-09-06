json.array!(@barangay_postharvest_equipment_and_machinery_projects) do |barangay_postharvest_equipment_and_machinery_project|
  json.extract! barangay_postharvest_equipment_and_machinery_project, :barangay_id, :tag, :name, :description, :postharvest_equipment_and_machinery_typology_id, :count_of_units_provided, :status
  json.url barangay_postharvest_equipment_and_machinery_project_url(barangay_postharvest_equipment_and_machinery_project, format: :json)
end
