require "test_helper"

class VendasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get vendas_new_url
    assert_response :success
  end
end
