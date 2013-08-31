json.array!(@education_service_provided_typologies) do |education_service_provided_typology|
  json.extract! education_service_provided_typology, :name, :description
  json.url education_service_provided_typology_url(education_service_provided_typology, format: :json)
end
