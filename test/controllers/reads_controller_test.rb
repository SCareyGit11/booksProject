require 'test_helper'

class ReadsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reads_new_url
    assert_response :success
  end

  test "should get index" do
    get reads_index_url
    assert_response :success
  end

  test "should get show" do
    get reads_show_url
    assert_response :success
  end

end
