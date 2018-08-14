require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should have a 'navbar' div" do
    get home_index_url
    assert_select "div.navbar"
  end

  test "should have a 'navbar-logo' div" do
    get home_index_url
    assert_select "div.navbar", "div.navbar-logo"
  end

  test "should have a 'navbar-right' div" do
    get home_index_url
    assert_select "div.navbar", "div.navbar-right"
  end


end
