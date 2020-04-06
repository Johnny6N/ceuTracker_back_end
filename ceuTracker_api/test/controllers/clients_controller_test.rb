require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url, as: :json
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { birth_day: @client.birth_day, birth_month: @client.birth_month, birth_year: @client.birth_year, f_name: @client.f_name, l_name: @client.l_name, license: @client.license } }, as: :json
    end

    assert_response 201
  end

  test "should show client" do
    get client_url(@client), as: :json
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { birth_day: @client.birth_day, birth_month: @client.birth_month, birth_year: @client.birth_year, f_name: @client.f_name, l_name: @client.l_name, license: @client.license } }, as: :json
    assert_response 200
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client), as: :json
    end

    assert_response 204
  end
end
