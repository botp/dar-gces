require 'test_helper'

class NaturalResourceTypologiesControllerTest < ActionController::TestCase
  setup do
    @natural_resource_typology = natural_resource_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:natural_resource_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create natural_resource_typology" do
    assert_difference('NaturalResourceTypology.count') do
      post :create, natural_resource_typology: { description: @natural_resource_typology.description, name: @natural_resource_typology.name }
    end

    assert_redirected_to natural_resource_typology_path(assigns(:natural_resource_typology))
  end

  test "should show natural_resource_typology" do
    get :show, id: @natural_resource_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @natural_resource_typology
    assert_response :success
  end

  test "should update natural_resource_typology" do
    patch :update, id: @natural_resource_typology, natural_resource_typology: { description: @natural_resource_typology.description, name: @natural_resource_typology.name }
    assert_redirected_to natural_resource_typology_path(assigns(:natural_resource_typology))
  end

  test "should destroy natural_resource_typology" do
    assert_difference('NaturalResourceTypology.count', -1) do
      delete :destroy, id: @natural_resource_typology
    end

    assert_redirected_to natural_resource_typologies_path
  end
end
