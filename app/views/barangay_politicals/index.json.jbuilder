json.array!(@barangay_politicals) do |barangay_political|
  json.extract! barangay_political, :tag, :barangay_id, :name, :description, :date_info_gathered, :barangay_chairman, :barc_chairman
  json.url barangay_political_url(barangay_political, format: :json)
end
