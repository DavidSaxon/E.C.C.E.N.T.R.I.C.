require 'test_helper'

class TestingControllerTest < ActionController::TestCase
  test "should get example" do
    get :example
    assert_response :success
  end

end
