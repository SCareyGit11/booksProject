require 'test_helper'

class InterestedsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get interesteds_new_url
    assert_response :success
  end

  test "should get index" do
    get interesteds_index_url
    assert_response :success
  end

  test "should get show" do
    get interesteds_show_url
    assert_response :success
  end

end
