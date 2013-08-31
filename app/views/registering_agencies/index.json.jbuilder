json.array!(@registering_agencies) do |registering_agency|
  json.extract! registering_agency, :name, :description
  json.url registering_agency_url(registering_agency, format: :json)
end
