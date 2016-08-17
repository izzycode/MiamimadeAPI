require 'test_helper'

class VerticalsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get verticals_create_url
    assert_response :success
  end

  test "should get destroy" do
    get verticals_destroy_url
    assert_response :success
  end

end
