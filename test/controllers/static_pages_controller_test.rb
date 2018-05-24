require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get accueil" do
    get static_pages_accueil_url
    assert_response :success
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

end
