json.array!(@barangay_lti_statuses) do |barangay_lti_status|
  json.extract! barangay_lti_status, :barangay_id, :tag, :name, :description, :date_confirmed, :lad_scope, :working_scope, :vos, :ca, :vlt, :gol, :remarks, :lad_male_arb, :lad_female_arb, :leasehold_scope, :leasehold_accomplishment, :remarks2, :lh_male_arb, :lh_female_arb
  json.url barangay_lti_status_url(barangay_lti_status, format: :json)
end
