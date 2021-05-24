require 'test_helper'
class InvalidNewUserWorkflowTest < ActionDispatch::IntegrationTest
  fixtures :all
  test 'try to create a new user without a login' do
    @user = users(:one)
    get '/users/new'
    assert_response :success
    post users_url, params: { user: { last_name: @user.last_name } }
    assert_equal '/users', path
    assert_select 'li', "Login name can't be blank"
    assert_select 'li', "Login name is too short (minimum is 10 characters)"
  end
end