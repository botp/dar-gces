require 'test_helper'

class BridgeProjectTypologiesControllerTest < ActionController::TestCase
  setup do
    @bridge_project_typology = bridge_project_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bridge_project_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bridge_project_typology" do
    assert_difference('BridgeProjectTypology.count') do
      post :create, bridge_project_typology: { description: @bridge_project_typology.description, name: @bridge_project_typology.name }
    end

    assert_redirected_to bridge_project_typology_path(assigns(:bridge_project_typology))
  end

  test "should show bridge_project_typology" do
    get :show, id: @bridge_project_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bridge_project_typology
    assert_response :success
  end

  test "should update bridge_project_typology" do
    patch :update, id: @bridge_project_typology, bridge_project_typology: { description: @bridge_project_typology.description, name: @bridge_project_typology.name }
    assert_redirected_to bridge_project_typology_path(assigns(:bridge_project_typology))
  end

  test "should destroy bridge_project_typology" do
    assert_difference('BridgeProjectTypology.count', -1) do
      delete :destroy, id: @bridge_project_typology
    end

    assert_redirected_to bridge_project_typologies_path
  end
end
