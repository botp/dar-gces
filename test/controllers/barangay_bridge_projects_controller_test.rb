require 'test_helper'

class BarangayBridgeProjectsControllerTest < ActionController::TestCase
  setup do
    @barangay_bridge_project = barangay_bridge_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_bridge_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_bridge_project" do
    assert_difference('BarangayBridgeProject.count') do
      post :create, barangay_bridge_project: { barangay_id: @barangay_bridge_project.barangay_id, date_completed: @barangay_bridge_project.date_completed, date_project_ended: @barangay_bridge_project.date_project_ended, date_project_started: @barangay_bridge_project.date_project_started, location: @barangay_bridge_project.location, name_of_bridge_project: @barangay_bridge_project.name_of_bridge_project, percentage_completion: @barangay_bridge_project.percentage_completion, project_length: @barangay_bridge_project.project_length, project_length_provided: @barangay_bridge_project.project_length_provided, project_status: @barangay_bridge_project.project_status, tag: @barangay_bridge_project.tag, type_of_project: @barangay_bridge_project.type_of_project }
    end

    assert_redirected_to barangay_bridge_project_path(assigns(:barangay_bridge_project))
  end

  test "should show barangay_bridge_project" do
    get :show, id: @barangay_bridge_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_bridge_project
    assert_response :success
  end

  test "should update barangay_bridge_project" do
    patch :update, id: @barangay_bridge_project, barangay_bridge_project: { barangay_id: @barangay_bridge_project.barangay_id, date_completed: @barangay_bridge_project.date_completed, date_project_ended: @barangay_bridge_project.date_project_ended, date_project_started: @barangay_bridge_project.date_project_started, location: @barangay_bridge_project.location, name_of_bridge_project: @barangay_bridge_project.name_of_bridge_project, percentage_completion: @barangay_bridge_project.percentage_completion, project_length: @barangay_bridge_project.project_length, project_length_provided: @barangay_bridge_project.project_length_provided, project_status: @barangay_bridge_project.project_status, tag: @barangay_bridge_project.tag, type_of_project: @barangay_bridge_project.type_of_project }
    assert_redirected_to barangay_bridge_project_path(assigns(:barangay_bridge_project))
  end

  test "should destroy barangay_bridge_project" do
    assert_difference('BarangayBridgeProject.count', -1) do
      delete :destroy, id: @barangay_bridge_project
    end

    assert_redirected_to barangay_bridge_projects_path
  end
end
