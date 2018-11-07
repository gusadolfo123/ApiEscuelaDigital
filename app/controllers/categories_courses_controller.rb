class CategoriesCoursesController < ApplicationController
  before_action :set_categories_course, only: [:show, :update, :destroy]

  # GET /categories_courses
  def index
    @categories_courses = CategoriesCourse.all

    render json: @categories_courses
  end

  # GET /categories_courses/1
  def show
    render json: @categories_course
  end

  # POST /categories_courses
  def create
    @categories_course = CategoriesCourse.new(categories_course_params)

    if @categories_course.save
      render json: @categories_course, status: :created, location: @categories_course
    else
      render json: @categories_course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories_courses/1
  def update
    if @categories_course.update(categories_course_params)
      render json: @categories_course
    else
      render json: @categories_course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories_courses/1
  def destroy
    @categories_course.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories_course
      @categories_course = CategoriesCourse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def categories_course_params
      params.require(:categories_course).permit(:category_id, :course_id)
    end
end
