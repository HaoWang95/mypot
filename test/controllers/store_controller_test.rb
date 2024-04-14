require "test_helper"

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    # use assert_select to pick nav item
    assert_select 'nav a', minimum: 4
  end
end
