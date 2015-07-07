require 'test_helper'

class EmailControllerTest < ActionController::TestCase
  test "should get sendMail" do
    get :sendMail
    assert_response :success
  end

end
