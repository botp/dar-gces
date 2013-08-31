require 'test_helper'

class EducationServiceProvidedTypologiesControllerTest < ActionController::TestCase
  setup do
    @education_service_provided_typology = education_service_provided_typologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:education_service_provided_typologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create education_service_provided_typology" do
    assert_difference('EducationServiceProvidedTypology.count') do
      post :create, education_service_provided_typology: { description: @education_service_provided_typology.description, name: @education_service_provided_typology.name }
    end

    assert_redirected_to education_service_provided_typology_path(assigns(:education_service_provided_typology))
  end

  test "should show education_service_provided_typology" do
    get :show, id: @education_service_provided_typology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @education_service_provided_typology
    assert_response :success
  end

  test "should update education_service_provided_typology" do
    patch :update, id: @education_service_provided_typology, education_service_provided_typology: { description: @education_service_provided_typology.description, name: @education_service_provided_typology.name }
    assert_redirected_to education_service_provided_typology_path(assigns(:education_service_provided_typology))
  end

  test "should destroy education_service_provided_typology" do
    assert_difference('EducationServiceProvidedTypology.count', -1) do
      delete :destroy, id: @education_service_provided_typology
    end

    assert_redirected_to education_service_provided_typologies_path
  end
end
