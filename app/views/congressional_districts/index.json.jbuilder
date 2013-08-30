json.array!(@congressional_districts) do |congressional_district|
  json.extract! congressional_district, :name
  json.url congressional_district_url(congressional_district, format: :json)
end
