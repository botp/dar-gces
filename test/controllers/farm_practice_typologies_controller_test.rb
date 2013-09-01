require 'test_helper'

class FarmPracticeTypologiesControllerTest < ActionController::TestCase
  setup do
    @farm_practice_typology = farm_practice_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farm_practice_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create farm_practice_typology" do
    assert_difference('FarmPracticeTypology.count') do
      post :create, farm_practice_typology: { description: @farm_practice_typology.description, name: @farm_practice_typology.name }
    end

    assert_redirected_to farm_practice_typology_path(assigns(:farm_practice_typology))
  end

  test "should show farm_practice_typology" do
    get :show, id: @farm_practice_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @farm_practice_typology
    assert_response :success
  end

  test "should update farm_practice_typology" do
    patch :update, id: @farm_practice_typology, farm_practice_typology: { description: @farm_practice_typology.description, name: @farm_practice_typology.name }
    assert_redirected_to farm_practice_typology_path(assigns(:farm_practice_typology))
  end

  test "should destroy farm_practice_typology" do
    assert_difference('FarmPracticeTypology.count', -1) do
      delete :destroy, id: @farm_practice_typology
    end

    assert_redirected_to farm_practice_typologies_path
  end
end
