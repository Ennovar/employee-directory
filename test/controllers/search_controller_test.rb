require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get skills" do
    get search_skills_url
    assert_response :success
  end

end
