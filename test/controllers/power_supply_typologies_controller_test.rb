require 'test_helper'

class PowerSupplyTypologiesControllerTest < ActionController::TestCase
  setup do
    @power_supply_typology = power_supply_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:power_supply_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create power_supply_typology" do
    assert_difference('PowerSupplyTypology.count') do
      post :create, power_supply_typology: { description: @power_supply_typology.description, name: @power_supply_typology.name }
    end

    assert_redirected_to power_supply_typology_path(assigns(:power_supply_typology))
  end

  test "should show power_supply_typology" do
    get :show, id: @power_supply_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @power_supply_typology
    assert_response :success
  end

  test "should update power_supply_typology" do
    patch :update, id: @power_supply_typology, power_supply_typology: { description: @power_supply_typology.description, name: @power_supply_typology.name }
    assert_redirected_to power_supply_typology_path(assigns(:power_supply_typology))
  end

  test "should destroy power_supply_typology" do
    assert_difference('PowerSupplyTypology.count', -1) do
      delete :destroy, id: @power_supply_typology
    end

    assert_redirected_to power_supply_typologies_path
  end
end
