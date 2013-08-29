require 'test_helper'

class BarangayLtiStatusesControllerTest < ActionController::TestCase
  setup do
    @barangay_lti_status = barangay_lti_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_lti_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_lti_status" do
    assert_difference('BarangayLtiStatus.count') do
      post :create, barangay_lti_status: { barangay_id: @barangay_lti_status.barangay_id, ca: @barangay_lti_status.ca, date_confirmed: @barangay_lti_status.date_confirmed, description: @barangay_lti_status.description, gol: @barangay_lti_status.gol, lad_female_arb: @barangay_lti_status.lad_female_arb, lad_male_arb: @barangay_lti_status.lad_male_arb, lad_scope: @barangay_lti_status.lad_scope, leasehold_accomplishment: @barangay_lti_status.leasehold_accomplishment, leasehold_scope: @barangay_lti_status.leasehold_scope, lh_female_arb: @barangay_lti_status.lh_female_arb, lh_male_arb: @barangay_lti_status.lh_male_arb, name: @barangay_lti_status.name, remarks2: @barangay_lti_status.remarks2, remarks: @barangay_lti_status.remarks, tag: @barangay_lti_status.tag, vlt: @barangay_lti_status.vlt, vos: @barangay_lti_status.vos, working_scope: @barangay_lti_status.working_scope }
    end

    assert_redirected_to barangay_lti_status_path(assigns(:barangay_lti_status))
  end

  test "should show barangay_lti_status" do
    get :show, id: @barangay_lti_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_lti_status
    assert_response :success
  end

  test "should update barangay_lti_status" do
    patch :update, id: @barangay_lti_status, barangay_lti_status: { barangay_id: @barangay_lti_status.barangay_id, ca: @barangay_lti_status.ca, date_confirmed: @barangay_lti_status.date_confirmed, description: @barangay_lti_status.description, gol: @barangay_lti_status.gol, lad_female_arb: @barangay_lti_status.lad_female_arb, lad_male_arb: @barangay_lti_status.lad_male_arb, lad_scope: @barangay_lti_status.lad_scope, leasehold_accomplishment: @barangay_lti_status.leasehold_accomplishment, leasehold_scope: @barangay_lti_status.leasehold_scope, lh_female_arb: @barangay_lti_status.lh_female_arb, lh_male_arb: @barangay_lti_status.lh_male_arb, name: @barangay_lti_status.name, remarks2: @barangay_lti_status.remarks2, remarks: @barangay_lti_status.remarks, tag: @barangay_lti_status.tag, vlt: @barangay_lti_status.vlt, vos: @barangay_lti_status.vos, working_scope: @barangay_lti_status.working_scope }
    assert_redirected_to barangay_lti_status_path(assigns(:barangay_lti_status))
  end

  test "should destroy barangay_lti_status" do
    assert_difference('BarangayLtiStatus.count', -1) do
      delete :destroy, id: @barangay_lti_status
    end

    assert_redirected_to barangay_lti_statuses_path
  end
end
