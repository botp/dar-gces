require 'test_helper'

class WaterSystemTypologiesControllerTest < ActionController::TestCase
  setup do
    @water_system_typology = water_system_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:water_system_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create water_system_typology" do
    assert_difference('WaterSystemTypology.count') do
      post :create, water_system_typology: { description: @water_system_typology.description, name: @water_system_typology.name }
    end

    assert_redirected_to water_system_typology_path(assigns(:water_system_typology))
  end

  test "should show water_system_typology" do
    get :show, id: @water_system_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @water_system_typology
    assert_response :success
  end

  test "should update water_system_typology" do
    patch :update, id: @water_system_typology, water_system_typology: { description: @water_system_typology.description, name: @water_system_typology.name }
    assert_redirected_to water_system_typology_path(assigns(:water_system_typology))
  end

  test "should destroy water_system_typology" do
    assert_difference('WaterSystemTypology.count', -1) do
      delete :destroy, id: @water_system_typology
    end

    assert_redirected_to water_system_typologies_path
  end
end
