json.array!(@environmental_concern_typologies) do |environmental_concern_typology|
  json.extract! environmental_concern_typology, :name, :description
  json.url environmental_concern_typology_url(environmental_concern_typology, format: :json)
end
