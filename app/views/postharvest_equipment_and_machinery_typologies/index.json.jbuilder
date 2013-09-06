json.array!(@postharvest_equipment_and_machinery_typologies) do |postharvest_equipment_and_machinery_typology|
  json.extract! postharvest_equipment_and_machinery_typology, :name, :description
  json.url postharvest_equipment_and_machinery_typology_url(postharvest_equipment_and_machinery_typology, format: :json)
end
