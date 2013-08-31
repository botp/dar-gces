require 'test_helper'

class AgriBasedEnterpriseTypologiesControllerTest < ActionController::TestCase
  setup do
    @agri_based_enterprise_typology = agri_based_enterprise_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agri_based_enterprise_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agri_based_enterprise_typology" do
    assert_difference('AgriBasedEnterpriseTypology.count') do
      post :create, agri_based_enterprise_typology: { description: @agri_based_enterprise_typology.description, name: @agri_based_enterprise_typology.name }
    end

    assert_redirected_to agri_based_enterprise_typology_path(assigns(:agri_based_enterprise_typology))
  end

  test "should show agri_based_enterprise_typology" do
    get :show, id: @agri_based_enterprise_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agri_based_enterprise_typology
    assert_response :success
  end

  test "should update agri_based_enterprise_typology" do
    patch :update, id: @agri_based_enterprise_typology, agri_based_enterprise_typology: { description: @agri_based_enterprise_typology.description, name: @agri_based_enterprise_typology.name }
    assert_redirected_to agri_based_enterprise_typology_path(assigns(:agri_based_enterprise_typology))
  end

  test "should destroy agri_based_enterprise_typology" do
    assert_difference('AgriBasedEnterpriseTypology.count', -1) do
      delete :destroy, id: @agri_based_enterprise_typology
    end

    assert_redirected_to agri_based_enterprise_typologies_path
  end
end
