require 'test_helper'

class PostHarvestFacilityTypologiesControllerTest < ActionController::TestCase
  setup do
    @post_harvest_facility_typology = post_harvest_facility_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_harvest_facility_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_harvest_facility_typology" do
    assert_difference('PostHarvestFacilityTypology.count') do
      post :create, post_harvest_facility_typology: { description: @post_harvest_facility_typology.description, name: @post_harvest_facility_typology.name }
    end

    assert_redirected_to post_harvest_facility_typology_path(assigns(:post_harvest_facility_typology))
  end

  test "should show post_harvest_facility_typology" do
    get :show, id: @post_harvest_facility_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_harvest_facility_typology
    assert_response :success
  end

  test "should update post_harvest_facility_typology" do
    patch :update, id: @post_harvest_facility_typology, post_harvest_facility_typology: { description: @post_harvest_facility_typology.description, name: @post_harvest_facility_typology.name }
    assert_redirected_to post_harvest_facility_typology_path(assigns(:post_harvest_facility_typology))
  end

  test "should destroy post_harvest_facility_typology" do
    assert_difference('PostHarvestFacilityTypology.count', -1) do
      delete :destroy, id: @post_harvest_facility_typology
    end

    assert_redirected_to post_harvest_facility_typologies_path
  end
end
