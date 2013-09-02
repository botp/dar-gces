json.array!(@barangay_organizations) do |barangay_organization|
  json.extract! barangay_organization, :barangay_id, :tag, :name, :description, :location, :name_of_chairman, :year_organized, :organization_typology_id, :registering_agency_id, :year_registered, :registration_number, :date_confirmed
  json.url barangay_organization_url(barangay_organization, format: :json)
end
