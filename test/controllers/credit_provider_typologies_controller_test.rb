require 'test_helper'

class CreditProviderTypologiesControllerTest < ActionController::TestCase
  setup do
    @credit_provider_typology = credit_provider_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:credit_provider_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create credit_provider_typology" do
    assert_difference('CreditProviderTypology.count') do
      post :create, credit_provider_typology: { description: @credit_provider_typology.description, name: @credit_provider_typology.name }
    end

    assert_redirected_to credit_provider_typology_path(assigns(:credit_provider_typology))
  end

  test "should show credit_provider_typology" do
    get :show, id: @credit_provider_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @credit_provider_typology
    assert_response :success
  end

  test "should update credit_provider_typology" do
    patch :update, id: @credit_provider_typology, credit_provider_typology: { description: @credit_provider_typology.description, name: @credit_provider_typology.name }
    assert_redirected_to credit_provider_typology_path(assigns(:credit_provider_typology))
  end

  test "should destroy credit_provider_typology" do
    assert_difference('CreditProviderTypology.count', -1) do
      delete :destroy, id: @credit_provider_typology
    end

    assert_redirected_to credit_provider_typologies_path
  end
end
