require 'test_helper'

class WomensDeskServiceTypologiesControllerTest < ActionController::TestCase
  setup do
    @womens_desk_service_typology = womens_desk_service_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:womens_desk_service_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create womens_desk_service_typology" do
    assert_difference('WomensDeskServiceTypology.count') do
      post :create, womens_desk_service_typology: { description: @womens_desk_service_typology.description, name: @womens_desk_service_typology.name }
    end

    assert_redirected_to womens_desk_service_typology_path(assigns(:womens_desk_service_typology))
  end

  test "should show womens_desk_service_typology" do
    get :show, id: @womens_desk_service_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @womens_desk_service_typology
    assert_response :success
  end

  test "should update womens_desk_service_typology" do
    patch :update, id: @womens_desk_service_typology, womens_desk_service_typology: { description: @womens_desk_service_typology.description, name: @womens_desk_service_typology.name }
    assert_redirected_to womens_desk_service_typology_path(assigns(:womens_desk_service_typology))
  end

  test "should destroy womens_desk_service_typology" do
    assert_difference('WomensDeskServiceTypology.count', -1) do
      delete :destroy, id: @womens_desk_service_typology
    end

    assert_redirected_to womens_desk_service_typologies_path
  end
end
