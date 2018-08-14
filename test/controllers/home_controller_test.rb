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

  test "'navbar' div should have a 'navbar-logo' div" do
    get home_index_url
    assert_select "div.navbar" do
      assert_select "div.navbar-logo"
    end
  end

  test "'navbar' div should have a 'navbar-right' div" do
    get home_index_url
    assert_select "div.navbar" do
      assert_select  "div.navbar-right"
    end
  end

  test "should have a 'tabs' div" do
    get home_index_url
    assert_select "div.tabs"
  end

  test "'tabs' div should have several 'tab' div" do
    get home_index_url
    assert_select "div.tabs" do
      assert_select "div.tab", :count > 1
    end
  end

end
