json.array!(@barangays) do |barangay|
  json.extract! barangay, :tag, :name, :description
  json.url barangay_url(barangay, format: :json)
end
