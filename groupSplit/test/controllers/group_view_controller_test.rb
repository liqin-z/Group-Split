require 'test_helper'

class GroupViewControllerTest < ActionDispatch::IntegrationTest
  test "should get new_transaction" do
    get group_view_new_transaction_url
    assert_response :success
  end

end
