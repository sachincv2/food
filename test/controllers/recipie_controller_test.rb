require 'test_helper'

class RecipieControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recipie_index_url
    assert_response :success
  end

end
