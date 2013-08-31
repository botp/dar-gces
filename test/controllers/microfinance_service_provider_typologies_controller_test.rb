require 'test_helper'

class MicrofinanceServiceProviderTypologiesControllerTest < ActionController::TestCase
  setup do
    @microfinance_service_provider_typology = microfinance_service_provider_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microfinance_service_provider_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microfinance_service_provider_typology" do
    assert_difference('MicrofinanceServiceProviderTypology.count') do
      post :create, microfinance_service_provider_typology: { description: @microfinance_service_provider_typology.description, name: @microfinance_service_provider_typology.name }
    end

    assert_redirected_to microfinance_service_provider_typology_path(assigns(:microfinance_service_provider_typology))
  end

  test "should show microfinance_service_provider_typology" do
    get :show, id: @microfinance_service_provider_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microfinance_service_provider_typology
    assert_response :success
  end

  test "should update microfinance_service_provider_typology" do
    patch :update, id: @microfinance_service_provider_typology, microfinance_service_provider_typology: { description: @microfinance_service_provider_typology.description, name: @microfinance_service_provider_typology.name }
    assert_redirected_to microfinance_service_provider_typology_path(assigns(:microfinance_service_provider_typology))
  end

  test "should destroy microfinance_service_provider_typology" do
    assert_difference('MicrofinanceServiceProviderTypology.count', -1) do
      delete :destroy, id: @microfinance_service_provider_typology
    end

    assert_redirected_to microfinance_service_provider_typologies_path
  end
end
