json.array!(@credit_provider_typologies) do |credit_provider_typology|
  json.extract! credit_provider_typology, :name, :description
  json.url credit_provider_typology_url(credit_provider_typology, format: :json)
end
