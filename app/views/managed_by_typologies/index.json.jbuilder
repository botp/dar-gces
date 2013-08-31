json.array!(@managed_by_typologies) do |managed_by_typology|
  json.extract! managed_by_typology, :name, :description
  json.url managed_by_typology_url(managed_by_typology, format: :json)
end
