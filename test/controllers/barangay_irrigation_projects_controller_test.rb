require 'test_helper'

class BarangayIrrigationProjectsControllerTest < ActionController::TestCase
  setup do
    @barangay_irrigation_project = barangay_irrigation_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_irrigation_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_irrigation_project" do
    assert_difference('BarangayIrrigationProject.count') do
      post :create, barangay_irrigation_project: { barangay_id: @barangay_irrigation_project.barangay_id, beneficiaries_count_female_arb: @barangay_irrigation_project.beneficiaries_count_female_arb, beneficiaries_count_female_non_arb: @barangay_irrigation_project.beneficiaries_count_female_non_arb, beneficiaries_count_male_arb: @barangay_irrigation_project.beneficiaries_count_male_arb, beneficiaries_count_male_non_arb: @barangay_irrigation_project.beneficiaries_count_male_non_arb, date_actually_completed: @barangay_irrigation_project.date_actually_completed, date_project_ended: @barangay_irrigation_project.date_project_ended, date_project_started: @barangay_irrigation_project.date_project_started, irrigation_project_typology_id: @barangay_irrigation_project.irrigation_project_typology_id, location: @barangay_irrigation_project.location, name_of_irrigation_project: @barangay_irrigation_project.name_of_irrigation_project, project_service_area: @barangay_irrigation_project.project_service_area, project_status: @barangay_irrigation_project.project_status, service_area_provided: @barangay_irrigation_project.service_area_provided, tag: @barangay_irrigation_project.tag, user_id: @barangay_irrigation_project.user_id }
    end

    assert_redirected_to barangay_irrigation_project_path(assigns(:barangay_irrigation_project))
  end

  test "should show barangay_irrigation_project" do
    get :show, id: @barangay_irrigation_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_irrigation_project
    assert_response :success
  end

  test "should update barangay_irrigation_project" do
    patch :update, id: @barangay_irrigation_project, barangay_irrigation_project: { barangay_id: @barangay_irrigation_project.barangay_id, beneficiaries_count_female_arb: @barangay_irrigation_project.beneficiaries_count_female_arb, beneficiaries_count_female_non_arb: @barangay_irrigation_project.beneficiaries_count_female_non_arb, beneficiaries_count_male_arb: @barangay_irrigation_project.beneficiaries_count_male_arb, beneficiaries_count_male_non_arb: @barangay_irrigation_project.beneficiaries_count_male_non_arb, date_actually_completed: @barangay_irrigation_project.date_actually_completed, date_project_ended: @barangay_irrigation_project.date_project_ended, date_project_started: @barangay_irrigation_project.date_project_started, irrigation_project_typology_id: @barangay_irrigation_project.irrigation_project_typology_id, location: @barangay_irrigation_project.location, name_of_irrigation_project: @barangay_irrigation_project.name_of_irrigation_project, project_service_area: @barangay_irrigation_project.project_service_area, project_status: @barangay_irrigation_project.project_status, service_area_provided: @barangay_irrigation_project.service_area_provided, tag: @barangay_irrigation_project.tag, user_id: @barangay_irrigation_project.user_id }
    assert_redirected_to barangay_irrigation_project_path(assigns(:barangay_irrigation_project))
  end

  test "should destroy barangay_irrigation_project" do
    assert_difference('BarangayIrrigationProject.count', -1) do
      delete :destroy, id: @barangay_irrigation_project
    end

    assert_redirected_to barangay_irrigation_projects_path
  end
end
