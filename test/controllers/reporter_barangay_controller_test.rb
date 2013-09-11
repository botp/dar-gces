require 'test_helper'

class ReporterBarangayControllerTest < ActionController::TestCase
  test "should get select" do
    get :select
    assert_response :success
  end

  test "should get report" do
    get :report
    assert_response :success
  end

end
