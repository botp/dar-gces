require 'test_helper'

class BarangayPopulationsControllerTest < ActionController::TestCase
  setup do
    @barangay_population = barangay_populations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_populations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_population" do
    assert_difference('BarangayPopulation.count') do
      post :create, barangay_population: { arb_female: @barangay_population.arb_female, arb_household: @barangay_population.arb_household, arb_male: @barangay_population.arb_male, barangay_id: @barangay_population.barangay_id, date_info_gathered: @barangay_population.date_info_gathered, description: @barangay_population.description, name: @barangay_population.name, non_arb_female: @barangay_population.non_arb_female, non_arb_household: @barangay_population.non_arb_household, non_arb_male: @barangay_population.non_arb_male, tag: @barangay_population.tag }
    end

    assert_redirected_to barangay_population_path(assigns(:barangay_population))
  end

  test "should show barangay_population" do
    get :show, id: @barangay_population
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_population
    assert_response :success
  end

  test "should update barangay_population" do
    patch :update, id: @barangay_population, barangay_population: { arb_female: @barangay_population.arb_female, arb_household: @barangay_population.arb_household, arb_male: @barangay_population.arb_male, barangay_id: @barangay_population.barangay_id, date_info_gathered: @barangay_population.date_info_gathered, description: @barangay_population.description, name: @barangay_population.name, non_arb_female: @barangay_population.non_arb_female, non_arb_household: @barangay_population.non_arb_household, non_arb_male: @barangay_population.non_arb_male, tag: @barangay_population.tag }
    assert_redirected_to barangay_population_path(assigns(:barangay_population))
  end

  test "should destroy barangay_population" do
    assert_difference('BarangayPopulation.count', -1) do
      delete :destroy, id: @barangay_population
    end

    assert_redirected_to barangay_populations_path
  end
end
