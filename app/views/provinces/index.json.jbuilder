json.array!(@provinces) do |province|
  json.extract! province, :tag, :name, :description
  json.url province_url(province, format: :json)
end
