require 'test_helper'

class HealthServiceTypologiesControllerTest < ActionController::TestCase
  setup do
    @health_service_typology = health_service_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:health_service_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create health_service_typology" do
    assert_difference('HealthServiceTypology.count') do
      post :create, health_service_typology: { description: @health_service_typology.description, name: @health_service_typology.name }
    end

    assert_redirected_to health_service_typology_path(assigns(:health_service_typology))
  end

  test "should show health_service_typology" do
    get :show, id: @health_service_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @health_service_typology
    assert_response :success
  end

  test "should update health_service_typology" do
    patch :update, id: @health_service_typology, health_service_typology: { description: @health_service_typology.description, name: @health_service_typology.name }
    assert_redirected_to health_service_typology_path(assigns(:health_service_typology))
  end

  test "should destroy health_service_typology" do
    assert_difference('HealthServiceTypology.count', -1) do
      delete :destroy, id: @health_service_typology
    end

    assert_redirected_to health_service_typologies_path
  end
end
