json.array!(@water_system_typologies) do |water_system_typology|
  json.extract! water_system_typology, :name, :description
  json.url water_system_typology_url(water_system_typology, format: :json)
end
