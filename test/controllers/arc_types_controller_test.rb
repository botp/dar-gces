require 'test_helper'

class ArcTypesControllerTest < ActionController::TestCase
  setup do
    @arc_type = arc_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arc_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arc_type" do
    assert_difference('ArcType.count') do
      post :create, arc_type: { description: @arc_type.description, name: @arc_type.name }
    end

    assert_redirected_to arc_type_path(assigns(:arc_type))
  end

  test "should show arc_type" do
    get :show, id: @arc_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arc_type
    assert_response :success
  end

  test "should update arc_type" do
    patch :update, id: @arc_type, arc_type: { description: @arc_type.description, name: @arc_type.name }
    assert_redirected_to arc_type_path(assigns(:arc_type))
  end

  test "should destroy arc_type" do
    assert_difference('ArcType.count', -1) do
      delete :destroy, id: @arc_type
    end

    assert_redirected_to arc_types_path
  end
end
