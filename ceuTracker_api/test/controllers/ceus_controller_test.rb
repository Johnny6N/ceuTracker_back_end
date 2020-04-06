require 'test_helper'

class CeusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ceu = ceus(:one)
  end

  test "should get index" do
    get ceus_url, as: :json
    assert_response :success
  end

  test "should create ceu" do
    assert_difference('Ceu.count') do
      post ceus_url, params: { ceu: { hours: @ceu.hours, instructor_name: @ceu.instructor_name, number: @ceu.number, provider_name: @ceu.provider_name, state: @ceu.state, title: @ceu.title } }, as: :json
    end

    assert_response 201
  end

  test "should show ceu" do
    get ceu_url(@ceu), as: :json
    assert_response :success
  end

  test "should update ceu" do
    patch ceu_url(@ceu), params: { ceu: { hours: @ceu.hours, instructor_name: @ceu.instructor_name, number: @ceu.number, provider_name: @ceu.provider_name, state: @ceu.state, title: @ceu.title } }, as: :json
    assert_response 200
  end

  test "should destroy ceu" do
    assert_difference('Ceu.count', -1) do
      delete ceu_url(@ceu), as: :json
    end

    assert_response 204
  end
end
