json.array!(@irrigation_facility_typologies) do |irrigation_facility_typology|
  json.extract! irrigation_facility_typology, :name, :description
  json.url irrigation_facility_typology_url(irrigation_facility_typology, format: :json)
end
