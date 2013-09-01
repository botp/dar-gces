json.array!(@natural_resource_typologies) do |natural_resource_typology|
  json.extract! natural_resource_typology, :name, :description
  json.url natural_resource_typology_url(natural_resource_typology, format: :json)
end
