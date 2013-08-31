json.array!(@fmr_project_typologies) do |fmr_project_typology|
  json.extract! fmr_project_typology, :name, :description
  json.url fmr_project_typology_url(fmr_project_typology, format: :json)
end
