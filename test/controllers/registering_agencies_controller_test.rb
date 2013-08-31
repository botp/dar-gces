require 'test_helper'

class RegisteringAgenciesControllerTest < ActionController::TestCase
  setup do
    @registering_agency = registering_agencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registering_agencies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registering_agency" do
    assert_difference('RegisteringAgency.count') do
      post :create, registering_agency: { description: @registering_agency.description, name: @registering_agency.name }
    end

    assert_redirected_to registering_agency_path(assigns(:registering_agency))
  end

  test "should show registering_agency" do
    get :show, id: @registering_agency
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registering_agency
    assert_response :success
  end

  test "should update registering_agency" do
    patch :update, id: @registering_agency, registering_agency: { description: @registering_agency.description, name: @registering_agency.name }
    assert_redirected_to registering_agency_path(assigns(:registering_agency))
  end

  test "should destroy registering_agency" do
    assert_difference('RegisteringAgency.count', -1) do
      delete :destroy, id: @registering_agency
    end

    assert_redirected_to registering_agencies_path
  end
end
