require 'test_helper'

class EcosystemTypologiesControllerTest < ActionController::TestCase
  setup do
    @ecosystem_typology = ecosystem_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ecosystem_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ecosystem_typology" do
    assert_difference('EcosystemTypology.count') do
      post :create, ecosystem_typology: { description: @ecosystem_typology.description, name: @ecosystem_typology.name }
    end

    assert_redirected_to ecosystem_typology_path(assigns(:ecosystem_typology))
  end

  test "should show ecosystem_typology" do
    get :show, id: @ecosystem_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ecosystem_typology
    assert_response :success
  end

  test "should update ecosystem_typology" do
    patch :update, id: @ecosystem_typology, ecosystem_typology: { description: @ecosystem_typology.description, name: @ecosystem_typology.name }
    assert_redirected_to ecosystem_typology_path(assigns(:ecosystem_typology))
  end

  test "should destroy ecosystem_typology" do
    assert_difference('EcosystemTypology.count', -1) do
      delete :destroy, id: @ecosystem_typology
    end

    assert_redirected_to ecosystem_typologies_path
  end
end
