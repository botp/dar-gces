require 'test_helper'

class BarangayGeographicalsControllerTest < ActionController::TestCase
  setup do
    @barangay_geographical = barangay_geographicals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_geographicals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_geographical" do
    assert_difference('BarangayGeographical.count') do
      post :create, barangay_geographical: { agricultural_area: @barangay_geographical.agricultural_area, date_info_gathered: @barangay_geographical.date_info_gathered, description: @barangay_geographical.description, distance_from_town_proper: @barangay_geographical.distance_from_town_proper, ecosystem: @barangay_geographical.ecosystem, land_area: @barangay_geographical.land_area, means_of_transportation: @barangay_geographical.means_of_transportation, name: @barangay_geographical.name, tag: @barangay_geographical.tag, terrain: @barangay_geographical.terrain }
    end

    assert_redirected_to barangay_geographical_path(assigns(:barangay_geographical))
  end

  test "should show barangay_geographical" do
    get :show, id: @barangay_geographical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_geographical
    assert_response :success
  end

  test "should update barangay_geographical" do
    patch :update, id: @barangay_geographical, barangay_geographical: { agricultural_area: @barangay_geographical.agricultural_area, date_info_gathered: @barangay_geographical.date_info_gathered, description: @barangay_geographical.description, distance_from_town_proper: @barangay_geographical.distance_from_town_proper, ecosystem: @barangay_geographical.ecosystem, land_area: @barangay_geographical.land_area, means_of_transportation: @barangay_geographical.means_of_transportation, name: @barangay_geographical.name, tag: @barangay_geographical.tag, terrain: @barangay_geographical.terrain }
    assert_redirected_to barangay_geographical_path(assigns(:barangay_geographical))
  end

  test "should destroy barangay_geographical" do
    assert_difference('BarangayGeographical.count', -1) do
      delete :destroy, id: @barangay_geographical
    end

    assert_redirected_to barangay_geographicals_path
  end
end
