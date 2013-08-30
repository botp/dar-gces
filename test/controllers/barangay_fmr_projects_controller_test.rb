require 'test_helper'

class BarangayFmrProjectsControllerTest < ActionController::TestCase
  setup do
    @barangay_fmr_project = barangay_fmr_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_fmr_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_fmr_project" do
    assert_difference('BarangayFmrProject.count') do
      post :create, barangay_fmr_project: { barangay_id: @barangay_fmr_project.barangay_id, date_completed: @barangay_fmr_project.date_completed, date_project_ended: @barangay_fmr_project.date_project_ended, date_project_started: @barangay_fmr_project.date_project_started, location: @barangay_fmr_project.location, name_of_fmr_project: @barangay_fmr_project.name_of_fmr_project, percentage_completion: @barangay_fmr_project.percentage_completion, project_length: @barangay_fmr_project.project_length, project_length_provided: @barangay_fmr_project.project_length_provided, project_status: @barangay_fmr_project.project_status, tag: @barangay_fmr_project.tag, type_of_project: @barangay_fmr_project.type_of_project }
    end

    assert_redirected_to barangay_fmr_project_path(assigns(:barangay_fmr_project))
  end

  test "should show barangay_fmr_project" do
    get :show, id: @barangay_fmr_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_fmr_project
    assert_response :success
  end

  test "should update barangay_fmr_project" do
    patch :update, id: @barangay_fmr_project, barangay_fmr_project: { barangay_id: @barangay_fmr_project.barangay_id, date_completed: @barangay_fmr_project.date_completed, date_project_ended: @barangay_fmr_project.date_project_ended, date_project_started: @barangay_fmr_project.date_project_started, location: @barangay_fmr_project.location, name_of_fmr_project: @barangay_fmr_project.name_of_fmr_project, percentage_completion: @barangay_fmr_project.percentage_completion, project_length: @barangay_fmr_project.project_length, project_length_provided: @barangay_fmr_project.project_length_provided, project_status: @barangay_fmr_project.project_status, tag: @barangay_fmr_project.tag, type_of_project: @barangay_fmr_project.type_of_project }
    assert_redirected_to barangay_fmr_project_path(assigns(:barangay_fmr_project))
  end

  test "should destroy barangay_fmr_project" do
    assert_difference('BarangayFmrProject.count', -1) do
      delete :destroy, id: @barangay_fmr_project
    end

    assert_redirected_to barangay_fmr_projects_path
  end
end
