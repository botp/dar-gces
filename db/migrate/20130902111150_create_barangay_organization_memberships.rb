class CreateBarangayOrganizationMemberships < ActiveRecord::Migration
  def change
    create_table :barangay_organization_memberships do |t|
      t.integer :barangay_organization_id
      t.string :tag
      t.string :name
      t.text :description
      t.date :date_confirmed
      t.integer :count_male_arb
      t.integer :count_male_non_arb
      t.integer :count_female_arb
      t.integer :count_female_non_arb
      t.integer :count_bod_official_male_arb
      t.integer :count_bod_official_male_non_arb
      t.integer :count_bod_official_female_arb
      t.integer :count_bod_official_female_non_arb
      t.integer :count_municipal_level_rep_male_arb
      t.integer :count_municipal_level_rep_male_non_arb
      t.integer :count_municipal_level_rep_female_arb
      t.integer :count_municipal_level_rep_female_non_arb
      t.integer :count_provincial_level_rep_male_arb
      t.integer :count_provincial_level_rep_male_non_arb
      t.integer :count_provincial_level_rep_female_arb
      t.integer :count_provincial_level_rep_female_non_arb
      t.string :oma_rating
      t.boolean :organizational_status
      t.boolean :with_sustainability
      t.string :type_of_meetings
      t.string :frequency
      t.integer :capital_buildup
      t.integer :capital_count_of_members_contributing
      t.integer :savings
      t.integer :savings_count_of_members_contributing
      t.integer :assets
      t.integer :liabilities
      t.string :service_provided

      t.timestamps
    end
  end
end
