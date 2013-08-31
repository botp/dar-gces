json.array!(@recreation_service_typologies) do |recreation_service_typology|
  json.extract! recreation_service_typology, :name, :description
  json.url recreation_service_typology_url(recreation_service_typology, format: :json)
end
