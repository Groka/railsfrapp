require 'test_helper'

class SidebarControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get sidebar_show_url
    assert_response :success
  end

  test "should get userProfile" do
    get sidebar_userProfile_url
    assert_response :success
  end

  test "should get companyProfile" do
    get sidebar_companyProfile_url
    assert_response :success
  end

  test "should get eventProfile" do
    get sidebar_eventProfile_url
    assert_response :success
  end

end
