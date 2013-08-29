json.array!(@municipalities) do |municipality|
  json.extract! municipality, :tag, :name, :description
  json.url municipality_url(municipality, format: :json)
end
