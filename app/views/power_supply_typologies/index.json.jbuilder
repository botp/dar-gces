json.array!(@power_supply_typologies) do |power_supply_typology|
  json.extract! power_supply_typology, :name, :description
  json.url power_supply_typology_url(power_supply_typology, format: :json)
end
