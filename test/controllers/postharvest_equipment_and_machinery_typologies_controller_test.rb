require 'test_helper'

class PostharvestEquipmentAndMachineryTypologiesControllerTest < ActionController::TestCase
  setup do
    @postharvest_equipment_and_machinery_typology = postharvest_equipment_and_machinery_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postharvest_equipment_and_machinery_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postharvest_equipment_and_machinery_typology" do
    assert_difference('PostharvestEquipmentAndMachineryTypology.count') do
      post :create, postharvest_equipment_and_machinery_typology: { description: @postharvest_equipment_and_machinery_typology.description, name: @postharvest_equipment_and_machinery_typology.name }
    end

    assert_redirected_to postharvest_equipment_and_machinery_typology_path(assigns(:postharvest_equipment_and_machinery_typology))
  end

  test "should show postharvest_equipment_and_machinery_typology" do
    get :show, id: @postharvest_equipment_and_machinery_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postharvest_equipment_and_machinery_typology
    assert_response :success
  end

  test "should update postharvest_equipment_and_machinery_typology" do
    patch :update, id: @postharvest_equipment_and_machinery_typology, postharvest_equipment_and_machinery_typology: { description: @postharvest_equipment_and_machinery_typology.description, name: @postharvest_equipment_and_machinery_typology.name }
    assert_redirected_to postharvest_equipment_and_machinery_typology_path(assigns(:postharvest_equipment_and_machinery_typology))
  end

  test "should destroy postharvest_equipment_and_machinery_typology" do
    assert_difference('PostharvestEquipmentAndMachineryTypology.count', -1) do
      delete :destroy, id: @postharvest_equipment_and_machinery_typology
    end

    assert_redirected_to postharvest_equipment_and_machinery_typologies_path
  end
end
