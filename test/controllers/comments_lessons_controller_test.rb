require 'test_helper'

class CommentsLessonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comments_lesson = comments_lessons(:one)
  end

  test "should get index" do
    get comments_lessons_url, as: :json
    assert_response :success
  end

  test "should create comments_lesson" do
    assert_difference('CommentsLesson.count') do
      post comments_lessons_url, params: { comments_lesson: { content: @comments_lesson.content, lesson_id: @comments_lesson.lesson_id, user_id: @comments_lesson.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show comments_lesson" do
    get comments_lesson_url(@comments_lesson), as: :json
    assert_response :success
  end

  test "should update comments_lesson" do
    patch comments_lesson_url(@comments_lesson), params: { comments_lesson: { content: @comments_lesson.content, lesson_id: @comments_lesson.lesson_id, user_id: @comments_lesson.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy comments_lesson" do
    assert_difference('CommentsLesson.count', -1) do
      delete comments_lesson_url(@comments_lesson), as: :json
    end

    assert_response 204
  end
end
