require 'test_helper'

class BarangayPostharvestEquipmentAndMachineryProjectsControllerTest < ActionController::TestCase
  setup do
    @barangay_postharvest_equipment_and_machinery_project = barangay_postharvest_equipment_and_machinery_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_postharvest_equipment_and_machinery_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_postharvest_equipment_and_machinery_project" do
    assert_difference('BarangayPostharvestEquipmentAndMachineryProject.count') do
      post :create, barangay_postharvest_equipment_and_machinery_project: { barangay_id: @barangay_postharvest_equipment_and_machinery_project.barangay_id, count_of_units_provided: @barangay_postharvest_equipment_and_machinery_project.count_of_units_provided, description: @barangay_postharvest_equipment_and_machinery_project.description, name: @barangay_postharvest_equipment_and_machinery_project.name, postharvest_equipment_and_machinery_typology_id: @barangay_postharvest_equipment_and_machinery_project.postharvest_equipment_and_machinery_typology_id, status: @barangay_postharvest_equipment_and_machinery_project.status, tag: @barangay_postharvest_equipment_and_machinery_project.tag }
    end

    assert_redirected_to barangay_postharvest_equipment_and_machinery_project_path(assigns(:barangay_postharvest_equipment_and_machinery_project))
  end

  test "should show barangay_postharvest_equipment_and_machinery_project" do
    get :show, id: @barangay_postharvest_equipment_and_machinery_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_postharvest_equipment_and_machinery_project
    assert_response :success
  end

  test "should update barangay_postharvest_equipment_and_machinery_project" do
    patch :update, id: @barangay_postharvest_equipment_and_machinery_project, barangay_postharvest_equipment_and_machinery_project: { barangay_id: @barangay_postharvest_equipment_and_machinery_project.barangay_id, count_of_units_provided: @barangay_postharvest_equipment_and_machinery_project.count_of_units_provided, description: @barangay_postharvest_equipment_and_machinery_project.description, name: @barangay_postharvest_equipment_and_machinery_project.name, postharvest_equipment_and_machinery_typology_id: @barangay_postharvest_equipment_and_machinery_project.postharvest_equipment_and_machinery_typology_id, status: @barangay_postharvest_equipment_and_machinery_project.status, tag: @barangay_postharvest_equipment_and_machinery_project.tag }
    assert_redirected_to barangay_postharvest_equipment_and_machinery_project_path(assigns(:barangay_postharvest_equipment_and_machinery_project))
  end

  test "should destroy barangay_postharvest_equipment_and_machinery_project" do
    assert_difference('BarangayPostharvestEquipmentAndMachineryProject.count', -1) do
      delete :destroy, id: @barangay_postharvest_equipment_and_machinery_project
    end

    assert_redirected_to barangay_postharvest_equipment_and_machinery_projects_path
  end
end
