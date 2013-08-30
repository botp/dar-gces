require 'test_helper'

class CongressionalDistrictsControllerTest < ActionController::TestCase
  setup do
    @congressional_district = congressional_districts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:congressional_districts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create congressional_district" do
    assert_difference('CongressionalDistrict.count') do
      post :create, congressional_district: { name: @congressional_district.name }
    end

    assert_redirected_to congressional_district_path(assigns(:congressional_district))
  end

  test "should show congressional_district" do
    get :show, id: @congressional_district
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @congressional_district
    assert_response :success
  end

  test "should update congressional_district" do
    patch :update, id: @congressional_district, congressional_district: { name: @congressional_district.name }
    assert_redirected_to congressional_district_path(assigns(:congressional_district))
  end

  test "should destroy congressional_district" do
    assert_difference('CongressionalDistrict.count', -1) do
      delete :destroy, id: @congressional_district
    end

    assert_redirected_to congressional_districts_path
  end
end
