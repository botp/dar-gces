require 'test_helper'

class FmrProjectTypologiesControllerTest < ActionController::TestCase
  setup do
    @fmr_project_typology = fmr_project_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fmr_project_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fmr_project_typology" do
    assert_difference('FmrProjectTypology.count') do
      post :create, fmr_project_typology: { description: @fmr_project_typology.description, name: @fmr_project_typology.name }
    end

    assert_redirected_to fmr_project_typology_path(assigns(:fmr_project_typology))
  end

  test "should show fmr_project_typology" do
    get :show, id: @fmr_project_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fmr_project_typology
    assert_response :success
  end

  test "should update fmr_project_typology" do
    patch :update, id: @fmr_project_typology, fmr_project_typology: { description: @fmr_project_typology.description, name: @fmr_project_typology.name }
    assert_redirected_to fmr_project_typology_path(assigns(:fmr_project_typology))
  end

  test "should destroy fmr_project_typology" do
    assert_difference('FmrProjectTypology.count', -1) do
      delete :destroy, id: @fmr_project_typology
    end

    assert_redirected_to fmr_project_typologies_path
  end
end
