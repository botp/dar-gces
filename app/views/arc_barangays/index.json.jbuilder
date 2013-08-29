json.array!(@arc_barangays) do |arc_barangay|
  json.extract! arc_barangay, :arc_id, :barangay_id, :tag, :name, :description, :date_confirmed
  json.url arc_barangay_url(arc_barangay, format: :json)
end
