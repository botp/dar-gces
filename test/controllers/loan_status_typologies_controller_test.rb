require 'test_helper'

class LoanStatusTypologiesControllerTest < ActionController::TestCase
  setup do
    @loan_status_typology = loan_status_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loan_status_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan_status_typology" do
    assert_difference('LoanStatusTypology.count') do
      post :create, loan_status_typology: { description: @loan_status_typology.description, name: @loan_status_typology.name }
    end

    assert_redirected_to loan_status_typology_path(assigns(:loan_status_typology))
  end

  test "should show loan_status_typology" do
    get :show, id: @loan_status_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan_status_typology
    assert_response :success
  end

  test "should update loan_status_typology" do
    patch :update, id: @loan_status_typology, loan_status_typology: { description: @loan_status_typology.description, name: @loan_status_typology.name }
    assert_redirected_to loan_status_typology_path(assigns(:loan_status_typology))
  end

  test "should destroy loan_status_typology" do
    assert_difference('LoanStatusTypology.count', -1) do
      delete :destroy, id: @loan_status_typology
    end

    assert_redirected_to loan_status_typologies_path
  end
end
