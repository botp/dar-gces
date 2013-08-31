json.array!(@loan_access_typologies) do |loan_access_typology|
  json.extract! loan_access_typology, :name, :description
  json.url loan_access_typology_url(loan_access_typology, format: :json)
end
