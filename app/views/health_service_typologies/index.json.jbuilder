json.array!(@health_service_typologies) do |health_service_typology|
  json.extract! health_service_typology, :name, :description
  json.url health_service_typology_url(health_service_typology, format: :json)
end
