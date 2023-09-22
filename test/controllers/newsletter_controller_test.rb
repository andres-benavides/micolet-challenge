require "test_helper"

class NewsletterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get newsletter_index_url
    assert_response :success
  end

  test "should get new" do
    get newsletter_new_url
    assert_response :success
  end

  test "should get show" do
    get newsletter_show_url
    assert_response :success
  end
end
