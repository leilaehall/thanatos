require 'test_helper'

class CompaniesPreferenceControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get companies_preference_create_url
    assert_response :success
  end

  test "should get destroy" do
    get companies_preference_destroy_url
    assert_response :success
  end

end
