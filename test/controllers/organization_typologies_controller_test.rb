require 'test_helper'

class OrganizationTypologiesControllerTest < ActionController::TestCase
  setup do
    @organization_typology = organization_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organization_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organization_typology" do
    assert_difference('OrganizationTypology.count') do
      post :create, organization_typology: { description: @organization_typology.description, name: @organization_typology.name }
    end

    assert_redirected_to organization_typology_path(assigns(:organization_typology))
  end

  test "should show organization_typology" do
    get :show, id: @organization_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organization_typology
    assert_response :success
  end

  test "should update organization_typology" do
    patch :update, id: @organization_typology, organization_typology: { description: @organization_typology.description, name: @organization_typology.name }
    assert_redirected_to organization_typology_path(assigns(:organization_typology))
  end

  test "should destroy organization_typology" do
    assert_difference('OrganizationTypology.count', -1) do
      delete :destroy, id: @organization_typology
    end

    assert_redirected_to organization_typologies_path
  end
end
