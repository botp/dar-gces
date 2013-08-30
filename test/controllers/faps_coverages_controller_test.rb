require 'test_helper'

class FapsCoveragesControllerTest < ActionController::TestCase
  setup do
    @faps_coverage = faps_coverages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:faps_coverages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create faps_coverage" do
    assert_difference('FapsCoverage.count') do
      post :create, faps_coverage: { description: @faps_coverage.description, name: @faps_coverage.name }
    end

    assert_redirected_to faps_coverage_path(assigns(:faps_coverage))
  end

  test "should show faps_coverage" do
    get :show, id: @faps_coverage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @faps_coverage
    assert_response :success
  end

  test "should update faps_coverage" do
    patch :update, id: @faps_coverage, faps_coverage: { description: @faps_coverage.description, name: @faps_coverage.name }
    assert_redirected_to faps_coverage_path(assigns(:faps_coverage))
  end

  test "should destroy faps_coverage" do
    assert_difference('FapsCoverage.count', -1) do
      delete :destroy, id: @faps_coverage
    end

    assert_redirected_to faps_coverages_path
  end
end
