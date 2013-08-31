require 'test_helper'

class LoanAccessTypologiesControllerTest < ActionController::TestCase
  setup do
    @loan_access_typology = loan_access_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loan_access_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan_access_typology" do
    assert_difference('LoanAccessTypology.count') do
      post :create, loan_access_typology: { description: @loan_access_typology.description, name: @loan_access_typology.name }
    end

    assert_redirected_to loan_access_typology_path(assigns(:loan_access_typology))
  end

  test "should show loan_access_typology" do
    get :show, id: @loan_access_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan_access_typology
    assert_response :success
  end

  test "should update loan_access_typology" do
    patch :update, id: @loan_access_typology, loan_access_typology: { description: @loan_access_typology.description, name: @loan_access_typology.name }
    assert_redirected_to loan_access_typology_path(assigns(:loan_access_typology))
  end

  test "should destroy loan_access_typology" do
    assert_difference('LoanAccessTypology.count', -1) do
      delete :destroy, id: @loan_access_typology
    end

    assert_redirected_to loan_access_typologies_path
  end
end
