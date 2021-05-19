require 'test_helper'

class BreadCrumbsControllerTest < ActionDispatch::IntegrationTest
  test "should get ping" do
    get bread_crumbs_ping_url
    assert_response :success
  end

  test "should get pong" do
    get bread_crumbs_pong_url
    assert_response :success
  end

  test "should get index" do
    get bread_crumbs_index_url
    assert_response :success
  end

end
