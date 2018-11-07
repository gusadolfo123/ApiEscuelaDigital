require 'test_helper'

class CoursesStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @courses_student = courses_students(:one)
  end

  test "should get index" do
    get courses_students_url, as: :json
    assert_response :success
  end

  test "should create courses_student" do
    assert_difference('CoursesStudent.count') do
      post courses_students_url, params: { courses_student: { course_id: @courses_student.course_id, student_id: @courses_student.student_id } }, as: :json
    end

    assert_response 201
  end

  test "should show courses_student" do
    get courses_student_url(@courses_student), as: :json
    assert_response :success
  end

  test "should update courses_student" do
    patch courses_student_url(@courses_student), params: { courses_student: { course_id: @courses_student.course_id, student_id: @courses_student.student_id } }, as: :json
    assert_response 200
  end

  test "should destroy courses_student" do
    assert_difference('CoursesStudent.count', -1) do
      delete courses_student_url(@courses_student), as: :json
    end

    assert_response 204
  end
end
