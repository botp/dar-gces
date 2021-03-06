require 'test_helper'

class MarketingOutletTypologiesControllerTest < ActionController::TestCase
  setup do
    @marketing_outlet_typology = marketing_outlet_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marketing_outlet_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marketing_outlet_typology" do
    assert_difference('MarketingOutletTypology.count') do
      post :create, marketing_outlet_typology: { description: @marketing_outlet_typology.description, name: @marketing_outlet_typology.name }
    end

    assert_redirected_to marketing_outlet_typology_path(assigns(:marketing_outlet_typology))
  end

  test "should show marketing_outlet_typology" do
    get :show, id: @marketing_outlet_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marketing_outlet_typology
    assert_response :success
  end

  test "should update marketing_outlet_typology" do
    patch :update, id: @marketing_outlet_typology, marketing_outlet_typology: { description: @marketing_outlet_typology.description, name: @marketing_outlet_typology.name }
    assert_redirected_to marketing_outlet_typology_path(assigns(:marketing_outlet_typology))
  end

  test "should destroy marketing_outlet_typology" do
    assert_difference('MarketingOutletTypology.count', -1) do
      delete :destroy, id: @marketing_outlet_typology
    end

    assert_redirected_to marketing_outlet_typologies_path
  end
end
