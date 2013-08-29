json.array!(@barangay_populations) do |barangay_population|
  json.extract! barangay_population, :tag, :barangay_id, :name, :description, :date_info_gathered, :arb_male, :arb_female, :non_arb_male, :non_arb_female, :arb_household, :non_arb_household
  json.url barangay_population_url(barangay_population, format: :json)
end
