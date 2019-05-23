require 'test_helper'

class PlanningsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get plannings_new_url
    assert_response :success
  end

  test "should get create" do
    get plannings_create_url
    assert_response :success
  end

  test "should get show" do
    get plannings_show_url
    assert_response :success
  end

end
