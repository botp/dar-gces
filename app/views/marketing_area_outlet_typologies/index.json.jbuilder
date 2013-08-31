json.array!(@marketing_area_outlet_typologies) do |marketing_area_outlet_typology|
  json.extract! marketing_area_outlet_typology, :name, :description
  json.url marketing_area_outlet_typology_url(marketing_area_outlet_typology, format: :json)
end
