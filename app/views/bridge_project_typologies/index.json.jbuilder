json.array!(@bridge_project_typologies) do |bridge_project_typology|
  json.extract! bridge_project_typology, :name, :description
  json.url bridge_project_typology_url(bridge_project_typology, format: :json)
end
