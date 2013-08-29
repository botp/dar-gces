require 'test_helper'

class BarangayPoliticalsControllerTest < ActionController::TestCase
  setup do
    @barangay_political = barangay_politicals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_politicals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_political" do
    assert_difference('BarangayPolitical.count') do
      post :create, barangay_political: { barangay_chairman: @barangay_political.barangay_chairman, barangay_id: @barangay_political.barangay_id, barc_chairman: @barangay_political.barc_chairman, date_info_gathered: @barangay_political.date_info_gathered, description: @barangay_political.description, name: @barangay_political.name, tag: @barangay_political.tag }
    end

    assert_redirected_to barangay_political_path(assigns(:barangay_political))
  end

  test "should show barangay_political" do
    get :show, id: @barangay_political
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_political
    assert_response :success
  end

  test "should update barangay_political" do
    patch :update, id: @barangay_political, barangay_political: { barangay_chairman: @barangay_political.barangay_chairman, barangay_id: @barangay_political.barangay_id, barc_chairman: @barangay_political.barc_chairman, date_info_gathered: @barangay_political.date_info_gathered, description: @barangay_political.description, name: @barangay_political.name, tag: @barangay_political.tag }
    assert_redirected_to barangay_political_path(assigns(:barangay_political))
  end

  test "should destroy barangay_political" do
    assert_difference('BarangayPolitical.count', -1) do
      delete :destroy, id: @barangay_political
    end

    assert_redirected_to barangay_politicals_path
  end
end
