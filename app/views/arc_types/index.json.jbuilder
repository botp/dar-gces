json.array!(@arc_types) do |arc_type|
  json.extract! arc_type, :name, :description
  json.url arc_type_url(arc_type, format: :json)
end
