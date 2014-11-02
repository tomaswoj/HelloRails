require 'test_helper'

class StaticPagesTwoControllerTest < ActionController::TestCase
  test "should get contact" do
    get :contact
    assert_response :success
  end

end
