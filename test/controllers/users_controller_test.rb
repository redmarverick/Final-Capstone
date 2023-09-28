require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get current_user_index_url
    assert_response :success
  end
end
