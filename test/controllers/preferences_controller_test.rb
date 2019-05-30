require 'test_helper'

class PreferencesControllerTest < ActionDispatch::IntegrationTest
  test "should get basics" do
    get preferences_basics_url
    assert_response :success
  end

  test "should get ceremony" do
    get preferences_ceremony_url
    assert_response :success
  end

end
