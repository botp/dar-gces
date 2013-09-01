require 'test_helper'

class EnvironmentalConcernTypologiesControllerTest < ActionController::TestCase
  setup do
    @environmental_concern_typology = environmental_concern_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:environmental_concern_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create environmental_concern_typology" do
    assert_difference('EnvironmentalConcernTypology.count') do
      post :create, environmental_concern_typology: { description: @environmental_concern_typology.description, name: @environmental_concern_typology.name }
    end

    assert_redirected_to environmental_concern_typology_path(assigns(:environmental_concern_typology))
  end

  test "should show environmental_concern_typology" do
    get :show, id: @environmental_concern_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @environmental_concern_typology
    assert_response :success
  end

  test "should update environmental_concern_typology" do
    patch :update, id: @environmental_concern_typology, environmental_concern_typology: { description: @environmental_concern_typology.description, name: @environmental_concern_typology.name }
    assert_redirected_to environmental_concern_typology_path(assigns(:environmental_concern_typology))
  end

  test "should destroy environmental_concern_typology" do
    assert_difference('EnvironmentalConcernTypology.count', -1) do
      delete :destroy, id: @environmental_concern_typology
    end

    assert_redirected_to environmental_concern_typologies_path
  end
end
