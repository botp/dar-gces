require 'test_helper'

class ManagedByTypologiesControllerTest < ActionController::TestCase
  setup do
    @managed_by_typology = managed_by_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:managed_by_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create managed_by_typology" do
    assert_difference('ManagedByTypology.count') do
      post :create, managed_by_typology: { description: @managed_by_typology.description, name: @managed_by_typology.name }
    end

    assert_redirected_to managed_by_typology_path(assigns(:managed_by_typology))
  end

  test "should show managed_by_typology" do
    get :show, id: @managed_by_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @managed_by_typology
    assert_response :success
  end

  test "should update managed_by_typology" do
    patch :update, id: @managed_by_typology, managed_by_typology: { description: @managed_by_typology.description, name: @managed_by_typology.name }
    assert_redirected_to managed_by_typology_path(assigns(:managed_by_typology))
  end

  test "should destroy managed_by_typology" do
    assert_difference('ManagedByTypology.count', -1) do
      delete :destroy, id: @managed_by_typology
    end

    assert_redirected_to managed_by_typologies_path
  end
end
