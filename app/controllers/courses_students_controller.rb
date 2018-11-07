class CoursesStudentsController < ApplicationController
  before_action :set_courses_student, only: [:show, :update, :destroy]

  # GET /courses_students
  def index
    @courses_students = CoursesStudent.all

    render json: @courses_students
  end

  # GET /courses_students/1
  def show
    render json: @courses_student
  end

  # POST /courses_students
  def create
    @courses_student = CoursesStudent.new(courses_student_params)

    if @courses_student.save
      render json: @courses_student, status: :created, location: @courses_student
    else
      render json: @courses_student.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /courses_students/1
  def update
    if @courses_student.update(courses_student_params)
      render json: @courses_student
    else
      render json: @courses_student.errors, status: :unprocessable_entity
    end
  end

  # DELETE /courses_students/1
  def destroy
    @courses_student.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_courses_student
      @courses_student = CoursesStudent.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def courses_student_params
      params.require(:courses_student).permit(:student_id, :course_id)
    end
end
