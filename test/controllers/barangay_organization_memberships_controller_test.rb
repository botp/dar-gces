require 'test_helper'

class BarangayOrganizationMembershipsControllerTest < ActionController::TestCase
  setup do
    @barangay_organization_membership = barangay_organization_memberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_organization_memberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_organization_membership" do
    assert_difference('BarangayOrganizationMembership.count') do
      post :create, barangay_organization_membership: { assets: @barangay_organization_membership.assets, barangay_organization_id: @barangay_organization_membership.barangay_organization_id, capital_buildup: @barangay_organization_membership.capital_buildup, capital_count_of_members_contributing: @barangay_organization_membership.capital_count_of_members_contributing, count_bod_official_female_arb: @barangay_organization_membership.count_bod_official_female_arb, count_bod_official_female_non_arb: @barangay_organization_membership.count_bod_official_female_non_arb, count_bod_official_male_arb: @barangay_organization_membership.count_bod_official_male_arb, count_bod_official_male_non_arb: @barangay_organization_membership.count_bod_official_male_non_arb, count_female_arb: @barangay_organization_membership.count_female_arb, count_female_non_arb: @barangay_organization_membership.count_female_non_arb, count_male_arb: @barangay_organization_membership.count_male_arb, count_male_non_arb: @barangay_organization_membership.count_male_non_arb, count_municipal_level_rep_female_arb: @barangay_organization_membership.count_municipal_level_rep_female_arb, count_municipal_level_rep_female_non_arb: @barangay_organization_membership.count_municipal_level_rep_female_non_arb, count_municipal_level_rep_male_arb: @barangay_organization_membership.count_municipal_level_rep_male_arb, count_municipal_level_rep_male_non_arb: @barangay_organization_membership.count_municipal_level_rep_male_non_arb, count_provincial_level_rep_female_arb: @barangay_organization_membership.count_provincial_level_rep_female_arb, count_provincial_level_rep_female_non_arb: @barangay_organization_membership.count_provincial_level_rep_female_non_arb, count_provincial_level_rep_male_arb: @barangay_organization_membership.count_provincial_level_rep_male_arb, count_provincial_level_rep_male_non_arb: @barangay_organization_membership.count_provincial_level_rep_male_non_arb, date_confirmed: @barangay_organization_membership.date_confirmed, description: @barangay_organization_membership.description, frequency: @barangay_organization_membership.frequency, liabilities: @barangay_organization_membership.liabilities, name: @barangay_organization_membership.name, oma_rating: @barangay_organization_membership.oma_rating, organizational_status: @barangay_organization_membership.organizational_status, savings: @barangay_organization_membership.savings, savings_count_of_members_contributing: @barangay_organization_membership.savings_count_of_members_contributing, service_provided: @barangay_organization_membership.service_provided, tag: @barangay_organization_membership.tag, type_of_meetings: @barangay_organization_membership.type_of_meetings, with_sustainability: @barangay_organization_membership.with_sustainability }
    end

    assert_redirected_to barangay_organization_membership_path(assigns(:barangay_organization_membership))
  end

  test "should show barangay_organization_membership" do
    get :show, id: @barangay_organization_membership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_organization_membership
    assert_response :success
  end

  test "should update barangay_organization_membership" do
    patch :update, id: @barangay_organization_membership, barangay_organization_membership: { assets: @barangay_organization_membership.assets, barangay_organization_id: @barangay_organization_membership.barangay_organization_id, capital_buildup: @barangay_organization_membership.capital_buildup, capital_count_of_members_contributing: @barangay_organization_membership.capital_count_of_members_contributing, count_bod_official_female_arb: @barangay_organization_membership.count_bod_official_female_arb, count_bod_official_female_non_arb: @barangay_organization_membership.count_bod_official_female_non_arb, count_bod_official_male_arb: @barangay_organization_membership.count_bod_official_male_arb, count_bod_official_male_non_arb: @barangay_organization_membership.count_bod_official_male_non_arb, count_female_arb: @barangay_organization_membership.count_female_arb, count_female_non_arb: @barangay_organization_membership.count_female_non_arb, count_male_arb: @barangay_organization_membership.count_male_arb, count_male_non_arb: @barangay_organization_membership.count_male_non_arb, count_municipal_level_rep_female_arb: @barangay_organization_membership.count_municipal_level_rep_female_arb, count_municipal_level_rep_female_non_arb: @barangay_organization_membership.count_municipal_level_rep_female_non_arb, count_municipal_level_rep_male_arb: @barangay_organization_membership.count_municipal_level_rep_male_arb, count_municipal_level_rep_male_non_arb: @barangay_organization_membership.count_municipal_level_rep_male_non_arb, count_provincial_level_rep_female_arb: @barangay_organization_membership.count_provincial_level_rep_female_arb, count_provincial_level_rep_female_non_arb: @barangay_organization_membership.count_provincial_level_rep_female_non_arb, count_provincial_level_rep_male_arb: @barangay_organization_membership.count_provincial_level_rep_male_arb, count_provincial_level_rep_male_non_arb: @barangay_organization_membership.count_provincial_level_rep_male_non_arb, date_confirmed: @barangay_organization_membership.date_confirmed, description: @barangay_organization_membership.description, frequency: @barangay_organization_membership.frequency, liabilities: @barangay_organization_membership.liabilities, name: @barangay_organization_membership.name, oma_rating: @barangay_organization_membership.oma_rating, organizational_status: @barangay_organization_membership.organizational_status, savings: @barangay_organization_membership.savings, savings_count_of_members_contributing: @barangay_organization_membership.savings_count_of_members_contributing, service_provided: @barangay_organization_membership.service_provided, tag: @barangay_organization_membership.tag, type_of_meetings: @barangay_organization_membership.type_of_meetings, with_sustainability: @barangay_organization_membership.with_sustainability }
    assert_redirected_to barangay_organization_membership_path(assigns(:barangay_organization_membership))
  end

  test "should destroy barangay_organization_membership" do
    assert_difference('BarangayOrganizationMembership.count', -1) do
      delete :destroy, id: @barangay_organization_membership
    end

    assert_redirected_to barangay_organization_memberships_path
  end
end
