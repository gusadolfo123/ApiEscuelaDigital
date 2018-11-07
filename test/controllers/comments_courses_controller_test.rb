require 'test_helper'

class CommentsCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comments_course = comments_courses(:one)
  end

  test "should get index" do
    get comments_courses_url, as: :json
    assert_response :success
  end

  test "should create comments_course" do
    assert_difference('CommentsCourse.count') do
      post comments_courses_url, params: { comments_course: { content: @comments_course.content, course_id: @comments_course.course_id, user_id: @comments_course.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show comments_course" do
    get comments_course_url(@comments_course), as: :json
    assert_response :success
  end

  test "should update comments_course" do
    patch comments_course_url(@comments_course), params: { comments_course: { content: @comments_course.content, course_id: @comments_course.course_id, user_id: @comments_course.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy comments_course" do
    assert_difference('CommentsCourse.count', -1) do
      delete comments_course_url(@comments_course), as: :json
    end

    assert_response 204
  end
end
