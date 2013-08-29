json.array!(@barangay_geographicals) do |barangay_geographical|
  json.extract! barangay_geographical, :tag, :name, :description, :date_info_gathered, :land_area, :agricultural_area, :terrain, :ecosystem, :distance_from_town_proper, :means_of_transportation
  json.url barangay_geographical_url(barangay_geographical, format: :json)
end
