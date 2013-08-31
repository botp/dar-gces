require 'test_helper'

class RecreationServiceTypologiesControllerTest < ActionController::TestCase
  setup do
    @recreation_service_typology = recreation_service_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recreation_service_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recreation_service_typology" do
    assert_difference('RecreationServiceTypology.count') do
      post :create, recreation_service_typology: { description: @recreation_service_typology.description, name: @recreation_service_typology.name }
    end

    assert_redirected_to recreation_service_typology_path(assigns(:recreation_service_typology))
  end

  test "should show recreation_service_typology" do
    get :show, id: @recreation_service_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recreation_service_typology
    assert_response :success
  end

  test "should update recreation_service_typology" do
    patch :update, id: @recreation_service_typology, recreation_service_typology: { description: @recreation_service_typology.description, name: @recreation_service_typology.name }
    assert_redirected_to recreation_service_typology_path(assigns(:recreation_service_typology))
  end

  test "should destroy recreation_service_typology" do
    assert_difference('RecreationServiceTypology.count', -1) do
      delete :destroy, id: @recreation_service_typology
    end

    assert_redirected_to recreation_service_typologies_path
  end
end
