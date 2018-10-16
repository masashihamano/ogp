require 'test_helper'

class EntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get entries_create_url
    assert_response :success
  end

end
