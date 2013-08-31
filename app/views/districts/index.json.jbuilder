json.array!(@districts) do |district|
  json.extract! district, :province_id, :name, :description
  json.url district_url(district, format: :json)
end
