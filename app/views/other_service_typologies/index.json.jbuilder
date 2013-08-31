json.array!(@other_service_typologies) do |other_service_typology|
  json.extract! other_service_typology, :name, :description
  json.url other_service_typology_url(other_service_typology, format: :json)
end
