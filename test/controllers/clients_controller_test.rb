require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get clients_create_url
    assert_response :success
  end

  test "should get update" do
    get clients_update_url
    assert_response :success
  end

end
