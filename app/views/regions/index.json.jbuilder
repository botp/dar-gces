json.array!(@regions) do |region|
  json.extract! region, :region_tag, :name, :description
  json.url region_url(region, format: :json)
end
