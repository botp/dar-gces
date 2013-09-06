json.array!(@postharvest_structure_and_facility_typologies) do |postharvest_structure_and_facility_typology|
  json.extract! postharvest_structure_and_facility_typology, :name, :description
  json.url postharvest_structure_and_facility_typology_url(postharvest_structure_and_facility_typology, format: :json)
end
