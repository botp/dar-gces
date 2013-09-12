require 'test_helper'

class BarangayPostharvestStructureAndFacilityProjectsControllerTest < ActionController::TestCase
  setup do
    @barangay_postharvest_structure_and_facility_project = barangay_postharvest_structure_and_facility_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_postharvest_structure_and_facility_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_postharvest_structure_and_facility_project" do
    assert_difference('BarangayPostharvestStructureAndFacilityProject.count') do
      post :create, barangay_postharvest_structure_and_facility_project: { barangay_id: @barangay_postharvest_structure_and_facility_project.barangay_id, count_of_units_provided: @barangay_postharvest_structure_and_facility_project.count_of_units_provided, date_confirmed: @barangay_postharvest_structure_and_facility_project.date_confirmed, description: @barangay_postharvest_structure_and_facility_project.description, name: @barangay_postharvest_structure_and_facility_project.name, postharvest_structure_and_facility_typology_id: @barangay_postharvest_structure_and_facility_project.postharvest_structure_and_facility_typology_id, status: @barangay_postharvest_structure_and_facility_project.status, tag: @barangay_postharvest_structure_and_facility_project.tag, user_id: @barangay_postharvest_structure_and_facility_project.user_id }
    end

    assert_redirected_to barangay_postharvest_structure_and_facility_project_path(assigns(:barangay_postharvest_structure_and_facility_project))
  end

  test "should show barangay_postharvest_structure_and_facility_project" do
    get :show, id: @barangay_postharvest_structure_and_facility_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_postharvest_structure_and_facility_project
    assert_response :success
  end

  test "should update barangay_postharvest_structure_and_facility_project" do
    patch :update, id: @barangay_postharvest_structure_and_facility_project, barangay_postharvest_structure_and_facility_project: { barangay_id: @barangay_postharvest_structure_and_facility_project.barangay_id, count_of_units_provided: @barangay_postharvest_structure_and_facility_project.count_of_units_provided, date_confirmed: @barangay_postharvest_structure_and_facility_project.date_confirmed, description: @barangay_postharvest_structure_and_facility_project.description, name: @barangay_postharvest_structure_and_facility_project.name, postharvest_structure_and_facility_typology_id: @barangay_postharvest_structure_and_facility_project.postharvest_structure_and_facility_typology_id, status: @barangay_postharvest_structure_and_facility_project.status, tag: @barangay_postharvest_structure_and_facility_project.tag, user_id: @barangay_postharvest_structure_and_facility_project.user_id }
    assert_redirected_to barangay_postharvest_structure_and_facility_project_path(assigns(:barangay_postharvest_structure_and_facility_project))
  end

  test "should destroy barangay_postharvest_structure_and_facility_project" do
    assert_difference('BarangayPostharvestStructureAndFacilityProject.count', -1) do
      delete :destroy, id: @barangay_postharvest_structure_and_facility_project
    end

    assert_redirected_to barangay_postharvest_structure_and_facility_projects_path
  end
end
