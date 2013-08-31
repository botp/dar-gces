json.array!(@agri_based_enterprise_typologies) do |agri_based_enterprise_typology|
  json.extract! agri_based_enterprise_typology, :name, :description
  json.url agri_based_enterprise_typology_url(agri_based_enterprise_typology, format: :json)
end
