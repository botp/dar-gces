require 'test_helper'

class IrrigationProjectTypologiesControllerTest < ActionController::TestCase
  setup do
    @irrigation_project_typology = irrigation_project_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:irrigation_project_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create irrigation_project_typology" do
    assert_difference('IrrigationProjectTypology.count') do
      post :create, irrigation_project_typology: { description: @irrigation_project_typology.description, name: @irrigation_project_typology.name }
    end

    assert_redirected_to irrigation_project_typology_path(assigns(:irrigation_project_typology))
  end

  test "should show irrigation_project_typology" do
    get :show, id: @irrigation_project_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @irrigation_project_typology
    assert_response :success
  end

  test "should update irrigation_project_typology" do
    patch :update, id: @irrigation_project_typology, irrigation_project_typology: { description: @irrigation_project_typology.description, name: @irrigation_project_typology.name }
    assert_redirected_to irrigation_project_typology_path(assigns(:irrigation_project_typology))
  end

  test "should destroy irrigation_project_typology" do
    assert_difference('IrrigationProjectTypology.count', -1) do
      delete :destroy, id: @irrigation_project_typology
    end

    assert_redirected_to irrigation_project_typologies_path
  end
end
