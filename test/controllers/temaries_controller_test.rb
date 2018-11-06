require 'test_helper'

class TemariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temary = temaries(:one)
  end

  test "should get index" do
    get temaries_url, as: :json
    assert_response :success
  end

  test "should create temary" do
    assert_difference('Temary.count') do
      post temaries_url, params: { temary: { Title: @temary.Title, course_id: @temary.course_id } }, as: :json
    end

    assert_response 201
  end

  test "should show temary" do
    get temary_url(@temary), as: :json
    assert_response :success
  end

  test "should update temary" do
    patch temary_url(@temary), params: { temary: { Title: @temary.Title, course_id: @temary.course_id } }, as: :json
    assert_response 200
  end

  test "should destroy temary" do
    assert_difference('Temary.count', -1) do
      delete temary_url(@temary), as: :json
    end

    assert_response 204
  end
end
