json.array!(@microfinance_service_provider_typologies) do |microfinance_service_provider_typology|
  json.extract! microfinance_service_provider_typology, :name, :description
  json.url microfinance_service_provider_typology_url(microfinance_service_provider_typology, format: :json)
end
