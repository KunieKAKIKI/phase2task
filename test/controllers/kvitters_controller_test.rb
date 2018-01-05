require 'test_helper'

class KvittersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kvitters_index_url
    assert_response :success
  end

end
