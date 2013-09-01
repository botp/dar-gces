json.array!(@womens_desk_service_typologies) do |womens_desk_service_typology|
  json.extract! womens_desk_service_typology, :name, :description
  json.url womens_desk_service_typology_url(womens_desk_service_typology, format: :json)
end
