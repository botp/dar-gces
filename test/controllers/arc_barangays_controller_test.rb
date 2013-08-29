require 'test_helper'

class ArcBarangaysControllerTest < ActionController::TestCase
  setup do
    @arc_barangay = arc_barangays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arc_barangays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arc_barangay" do
    assert_difference('ArcBarangay.count') do
      post :create, arc_barangay: { arc_id: @arc_barangay.arc_id, barangay_id: @arc_barangay.barangay_id, date_confirmed: @arc_barangay.date_confirmed, description: @arc_barangay.description, name: @arc_barangay.name, tag: @arc_barangay.tag }
    end

    assert_redirected_to arc_barangay_path(assigns(:arc_barangay))
  end

  test "should show arc_barangay" do
    get :show, id: @arc_barangay
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arc_barangay
    assert_response :success
  end

  test "should update arc_barangay" do
    patch :update, id: @arc_barangay, arc_barangay: { arc_id: @arc_barangay.arc_id, barangay_id: @arc_barangay.barangay_id, date_confirmed: @arc_barangay.date_confirmed, description: @arc_barangay.description, name: @arc_barangay.name, tag: @arc_barangay.tag }
    assert_redirected_to arc_barangay_path(assigns(:arc_barangay))
  end

  test "should destroy arc_barangay" do
    assert_difference('ArcBarangay.count', -1) do
      delete :destroy, id: @arc_barangay
    end

    assert_redirected_to arc_barangays_path
  end
end
