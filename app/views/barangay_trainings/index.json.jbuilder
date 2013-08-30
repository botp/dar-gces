json.array!(@barangay_trainings) do |barangay_training|
  json.extract! barangay_training, :tag, :barangay_id, :training_title, :description, :source_of_funds, :amount, :conducted_by, :date_conducted, :particpants_male_arb, :participants_male_non_arb, :participants_female_arb, :participants_female_non_arb
  json.url barangay_training_url(barangay_training, format: :json)
end
