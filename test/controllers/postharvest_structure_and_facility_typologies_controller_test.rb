require 'test_helper'

class PostharvestStructureAndFacilityTypologiesControllerTest < ActionController::TestCase
  setup do
    @postharvest_structure_and_facility_typology = postharvest_structure_and_facility_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postharvest_structure_and_facility_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postharvest_structure_and_facility_typology" do
    assert_difference('PostharvestStructureAndFacilityTypology.count') do
      post :create, postharvest_structure_and_facility_typology: { description: @postharvest_structure_and_facility_typology.description, name: @postharvest_structure_and_facility_typology.name }
    end

    assert_redirected_to postharvest_structure_and_facility_typology_path(assigns(:postharvest_structure_and_facility_typology))
  end

  test "should show postharvest_structure_and_facility_typology" do
    get :show, id: @postharvest_structure_and_facility_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postharvest_structure_and_facility_typology
    assert_response :success
  end

  test "should update postharvest_structure_and_facility_typology" do
    patch :update, id: @postharvest_structure_and_facility_typology, postharvest_structure_and_facility_typology: { description: @postharvest_structure_and_facility_typology.description, name: @postharvest_structure_and_facility_typology.name }
    assert_redirected_to postharvest_structure_and_facility_typology_path(assigns(:postharvest_structure_and_facility_typology))
  end

  test "should destroy postharvest_structure_and_facility_typology" do
    assert_difference('PostharvestStructureAndFacilityTypology.count', -1) do
      delete :destroy, id: @postharvest_structure_and_facility_typology
    end

    assert_redirected_to postharvest_structure_and_facility_typologies_path
  end
end
