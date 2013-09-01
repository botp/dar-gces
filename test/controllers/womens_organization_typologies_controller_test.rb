require 'test_helper'

class WomensOrganizationTypologiesControllerTest < ActionController::TestCase
  setup do
    @womens_organization_typology = womens_organization_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:womens_organization_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create womens_organization_typology" do
    assert_difference('WomensOrganizationTypology.count') do
      post :create, womens_organization_typology: { description: @womens_organization_typology.description, name: @womens_organization_typology.name }
    end

    assert_redirected_to womens_organization_typology_path(assigns(:womens_organization_typology))
  end

  test "should show womens_organization_typology" do
    get :show, id: @womens_organization_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @womens_organization_typology
    assert_response :success
  end

  test "should update womens_organization_typology" do
    patch :update, id: @womens_organization_typology, womens_organization_typology: { description: @womens_organization_typology.description, name: @womens_organization_typology.name }
    assert_redirected_to womens_organization_typology_path(assigns(:womens_organization_typology))
  end

  test "should destroy womens_organization_typology" do
    assert_difference('WomensOrganizationTypology.count', -1) do
      delete :destroy, id: @womens_organization_typology
    end

    assert_redirected_to womens_organization_typologies_path
  end
end
