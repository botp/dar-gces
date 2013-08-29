require 'test_helper'

class ArcsControllerTest < ActionController::TestCase
  setup do
    @arc = arcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arc" do
    assert_difference('Arc.count') do
      post :create, arc: { alda_rating: @arc.alda_rating, arc_profiled: @arc.arc_profiled, classification: @arc.classification, date_confirmed: @arc.date_confirmed, description: @arc.description, dev_plan_available: @arc.dev_plan_available, dev_plan_mainstream: @arc.dev_plan_mainstream, faps_coverage: @arc.faps_coverage, name: @arc.name, tag: @arc.tag }
    end

    assert_redirected_to arc_path(assigns(:arc))
  end

  test "should show arc" do
    get :show, id: @arc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arc
    assert_response :success
  end

  test "should update arc" do
    patch :update, id: @arc, arc: { alda_rating: @arc.alda_rating, arc_profiled: @arc.arc_profiled, classification: @arc.classification, date_confirmed: @arc.date_confirmed, description: @arc.description, dev_plan_available: @arc.dev_plan_available, dev_plan_mainstream: @arc.dev_plan_mainstream, faps_coverage: @arc.faps_coverage, name: @arc.name, tag: @arc.tag }
    assert_redirected_to arc_path(assigns(:arc))
  end

  test "should destroy arc" do
    assert_difference('Arc.count', -1) do
      delete :destroy, id: @arc
    end

    assert_redirected_to arcs_path
  end
end
