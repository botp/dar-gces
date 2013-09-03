require 'test_helper'

class BarangayFmrProjectCompletionsControllerTest < ActionController::TestCase
  setup do
    @barangay_fmr_project_completion = barangay_fmr_project_completions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_fmr_project_completions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_fmr_project_completion" do
    assert_difference('BarangayFmrProjectCompletion.count') do
      post :create, barangay_fmr_project_completion: { barangay_fmr_project_id: @barangay_fmr_project_completion.barangay_fmr_project_id, date_confirmed: @barangay_fmr_project_completion.date_confirmed, datetime_edited: @barangay_fmr_project_completion.datetime_edited, description: @barangay_fmr_project_completion.description, name: @barangay_fmr_project_completion.name, percentage_completion: @barangay_fmr_project_completion.percentage_completion, tag: @barangay_fmr_project_completion.tag, user_id: @barangay_fmr_project_completion.user_id }
    end

    assert_redirected_to barangay_fmr_project_completion_path(assigns(:barangay_fmr_project_completion))
  end

  test "should show barangay_fmr_project_completion" do
    get :show, id: @barangay_fmr_project_completion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_fmr_project_completion
    assert_response :success
  end

  test "should update barangay_fmr_project_completion" do
    patch :update, id: @barangay_fmr_project_completion, barangay_fmr_project_completion: { barangay_fmr_project_id: @barangay_fmr_project_completion.barangay_fmr_project_id, date_confirmed: @barangay_fmr_project_completion.date_confirmed, datetime_edited: @barangay_fmr_project_completion.datetime_edited, description: @barangay_fmr_project_completion.description, name: @barangay_fmr_project_completion.name, percentage_completion: @barangay_fmr_project_completion.percentage_completion, tag: @barangay_fmr_project_completion.tag, user_id: @barangay_fmr_project_completion.user_id }
    assert_redirected_to barangay_fmr_project_completion_path(assigns(:barangay_fmr_project_completion))
  end

  test "should destroy barangay_fmr_project_completion" do
    assert_difference('BarangayFmrProjectCompletion.count', -1) do
      delete :destroy, id: @barangay_fmr_project_completion
    end

    assert_redirected_to barangay_fmr_project_completions_path
  end
end
