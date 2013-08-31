json.array!(@loan_status_typologies) do |loan_status_typology|
  json.extract! loan_status_typology, :name, :description
  json.url loan_status_typology_url(loan_status_typology, format: :json)
end
