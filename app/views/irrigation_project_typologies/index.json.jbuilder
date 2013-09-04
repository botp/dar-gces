json.array!(@irrigation_project_typologies) do |irrigation_project_typology|
  json.extract! irrigation_project_typology, :name, :description
  json.url irrigation_project_typology_url(irrigation_project_typology, format: :json)
end
