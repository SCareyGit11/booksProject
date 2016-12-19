require 'test_helper'

class CurrentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get currents_new_url
    assert_response :success
  end

  test "should get index" do
    get currents_index_url
    assert_response :success
  end

  test "should get show" do
    get currents_show_url
    assert_response :success
  end

end
