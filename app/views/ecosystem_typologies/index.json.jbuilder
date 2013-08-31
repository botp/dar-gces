json.array!(@ecosystem_typologies) do |ecosystem_typology|
  json.extract! ecosystem_typology, :name, :description
  json.url ecosystem_typology_url(ecosystem_typology, format: :json)
end
