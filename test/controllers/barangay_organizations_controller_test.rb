require 'test_helper'

class BarangayOrganizationsControllerTest < ActionController::TestCase
  setup do
    @barangay_organization = barangay_organizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_organizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_organization" do
    assert_difference('BarangayOrganization.count') do
      post :create, barangay_organization: { barangay_id: @barangay_organization.barangay_id, date_confirmed: @barangay_organization.date_confirmed, description: @barangay_organization.description, location: @barangay_organization.location, name: @barangay_organization.name, name_of_chairman: @barangay_organization.name_of_chairman, organization_typology_id: @barangay_organization.organization_typology_id, registering_agency_id: @barangay_organization.registering_agency_id, registration_number: @barangay_organization.registration_number, tag: @barangay_organization.tag, year_organized: @barangay_organization.year_organized, year_registered: @barangay_organization.year_registered }
    end

    assert_redirected_to barangay_organization_path(assigns(:barangay_organization))
  end

  test "should show barangay_organization" do
    get :show, id: @barangay_organization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_organization
    assert_response :success
  end

  test "should update barangay_organization" do
    patch :update, id: @barangay_organization, barangay_organization: { barangay_id: @barangay_organization.barangay_id, date_confirmed: @barangay_organization.date_confirmed, description: @barangay_organization.description, location: @barangay_organization.location, name: @barangay_organization.name, name_of_chairman: @barangay_organization.name_of_chairman, organization_typology_id: @barangay_organization.organization_typology_id, registering_agency_id: @barangay_organization.registering_agency_id, registration_number: @barangay_organization.registration_number, tag: @barangay_organization.tag, year_organized: @barangay_organization.year_organized, year_registered: @barangay_organization.year_registered }
    assert_redirected_to barangay_organization_path(assigns(:barangay_organization))
  end

  test "should destroy barangay_organization" do
    assert_difference('BarangayOrganization.count', -1) do
      delete :destroy, id: @barangay_organization
    end

    assert_redirected_to barangay_organizations_path
  end
end
