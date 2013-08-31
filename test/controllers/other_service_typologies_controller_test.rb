require 'test_helper'

class OtherServiceTypologiesControllerTest < ActionController::TestCase
  setup do
    @other_service_typology = other_service_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:other_service_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create other_service_typology" do
    assert_difference('OtherServiceTypology.count') do
      post :create, other_service_typology: { description: @other_service_typology.description, name: @other_service_typology.name }
    end

    assert_redirected_to other_service_typology_path(assigns(:other_service_typology))
  end

  test "should show other_service_typology" do
    get :show, id: @other_service_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @other_service_typology
    assert_response :success
  end

  test "should update other_service_typology" do
    patch :update, id: @other_service_typology, other_service_typology: { description: @other_service_typology.description, name: @other_service_typology.name }
    assert_redirected_to other_service_typology_path(assigns(:other_service_typology))
  end

  test "should destroy other_service_typology" do
    assert_difference('OtherServiceTypology.count', -1) do
      delete :destroy, id: @other_service_typology
    end

    assert_redirected_to other_service_typologies_path
  end
end
