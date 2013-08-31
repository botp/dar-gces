require 'test_helper'

class IrrigationFacilityTypologiesControllerTest < ActionController::TestCase
  setup do
    @irrigation_facility_typology = irrigation_facility_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:irrigation_facility_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create irrigation_facility_typology" do
    assert_difference('IrrigationFacilityTypology.count') do
      post :create, irrigation_facility_typology: { description: @irrigation_facility_typology.description, name: @irrigation_facility_typology.name }
    end

    assert_redirected_to irrigation_facility_typology_path(assigns(:irrigation_facility_typology))
  end

  test "should show irrigation_facility_typology" do
    get :show, id: @irrigation_facility_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @irrigation_facility_typology
    assert_response :success
  end

  test "should update irrigation_facility_typology" do
    patch :update, id: @irrigation_facility_typology, irrigation_facility_typology: { description: @irrigation_facility_typology.description, name: @irrigation_facility_typology.name }
    assert_redirected_to irrigation_facility_typology_path(assigns(:irrigation_facility_typology))
  end

  test "should destroy irrigation_facility_typology" do
    assert_difference('IrrigationFacilityTypology.count', -1) do
      delete :destroy, id: @irrigation_facility_typology
    end

    assert_redirected_to irrigation_facility_typologies_path
  end
end
