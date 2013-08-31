json.array!(@organization_typologies) do |organization_typology|
  json.extract! organization_typology, :name, :description
  json.url organization_typology_url(organization_typology, format: :json)
end
