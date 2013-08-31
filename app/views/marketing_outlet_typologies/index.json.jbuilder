json.array!(@marketing_outlet_typologies) do |marketing_outlet_typology|
  json.extract! marketing_outlet_typology, :name, :description
  json.url marketing_outlet_typology_url(marketing_outlet_typology, format: :json)
end
