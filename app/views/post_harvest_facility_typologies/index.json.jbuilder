json.array!(@post_harvest_facility_typologies) do |post_harvest_facility_typology|
  json.extract! post_harvest_facility_typology, :name, :description
  json.url post_harvest_facility_typology_url(post_harvest_facility_typology, format: :json)
end
