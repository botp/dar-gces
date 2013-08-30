require 'test_helper'

class BarangayTrainingsControllerTest < ActionController::TestCase
  setup do
    @barangay_training = barangay_trainings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barangay_trainings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barangay_training" do
    assert_difference('BarangayTraining.count') do
      post :create, barangay_training: { amount: @barangay_training.amount, barangay_id: @barangay_training.barangay_id, conducted_by: @barangay_training.conducted_by, date_conducted: @barangay_training.date_conducted, description: @barangay_training.description, participants_female_arb: @barangay_training.participants_female_arb, participants_female_non_arb: @barangay_training.participants_female_non_arb, participants_male_non_arb: @barangay_training.participants_male_non_arb, particpants_male_arb: @barangay_training.particpants_male_arb, source_of_funds: @barangay_training.source_of_funds, tag: @barangay_training.tag, training_title: @barangay_training.training_title }
    end

    assert_redirected_to barangay_training_path(assigns(:barangay_training))
  end

  test "should show barangay_training" do
    get :show, id: @barangay_training
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barangay_training
    assert_response :success
  end

  test "should update barangay_training" do
    patch :update, id: @barangay_training, barangay_training: { amount: @barangay_training.amount, barangay_id: @barangay_training.barangay_id, conducted_by: @barangay_training.conducted_by, date_conducted: @barangay_training.date_conducted, description: @barangay_training.description, participants_female_arb: @barangay_training.participants_female_arb, participants_female_non_arb: @barangay_training.participants_female_non_arb, participants_male_non_arb: @barangay_training.participants_male_non_arb, particpants_male_arb: @barangay_training.particpants_male_arb, source_of_funds: @barangay_training.source_of_funds, tag: @barangay_training.tag, training_title: @barangay_training.training_title }
    assert_redirected_to barangay_training_path(assigns(:barangay_training))
  end

  test "should destroy barangay_training" do
    assert_difference('BarangayTraining.count', -1) do
      delete :destroy, id: @barangay_training
    end

    assert_redirected_to barangay_trainings_path
  end
end
