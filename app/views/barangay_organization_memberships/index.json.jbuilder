json.array!(@barangay_organization_memberships) do |barangay_organization_membership|
  json.extract! barangay_organization_membership, :barangay_organization_id, :tag, :name, :description, :date_confirmed, :count_male_arb, :count_male_non_arb, :count_female_arb, :count_female_non_arb, :count_bod_official_male_arb, :count_bod_official_male_non_arb, :count_bod_official_female_arb, :count_bod_official_female_non_arb, :count_municipal_level_rep_male_arb, :count_municipal_level_rep_male_non_arb, :count_municipal_level_rep_female_arb, :count_municipal_level_rep_female_non_arb, :count_provincial_level_rep_male_arb, :count_provincial_level_rep_male_non_arb, :count_provincial_level_rep_female_arb, :count_provincial_level_rep_female_non_arb, :oma_rating, :organizational_status, :with_sustainability, :type_of_meetings, :frequency, :capital_buildup, :capital_count_of_members_contributing, :savings, :savings_count_of_members_contributing, :assets, :liabilities, :service_provided
  json.url barangay_organization_membership_url(barangay_organization_membership, format: :json)
end
