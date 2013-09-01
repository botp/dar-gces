json.array!(@farm_practice_typologies) do |farm_practice_typology|
  json.extract! farm_practice_typology, :name, :description
  json.url farm_practice_typology_url(farm_practice_typology, format: :json)
end
