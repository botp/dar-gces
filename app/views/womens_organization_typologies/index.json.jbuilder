json.array!(@womens_organization_typologies) do |womens_organization_typology|
  json.extract! womens_organization_typology, :name, :description
  json.url womens_organization_typology_url(womens_organization_typology, format: :json)
end
