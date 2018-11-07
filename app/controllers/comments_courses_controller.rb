class CommentsCoursesController < ApplicationController
  before_action :set_comments_course, only: [:show, :update, :destroy]

  # GET /comments_courses
  def index
    # @comments_courses = CommentsCourse.all    
    @comments_courses = CommentsCourse.filter(params.slice(:user_id))

    render json: @comments_courses
  end

  # GET /comments_courses/1
  def show
    render json: @comments_course
  end

  # POST /comments_courses
  def create
    @comments_course = CommentsCourse.new(comments_course_params)

    if @comments_course.save
      render json: @comments_course, status: :created, location: @comments_course
    else
      render json: @comments_course.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments_courses/1
  def update
    if @comments_course.update(comments_course_params)
      render json: @comments_course
    else
      render json: @comments_course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments_courses/1
  def destroy
    @comments_course.destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_comments_course      
      @comments_course = CommentsCourse.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def comments_course_params
      params.require(:comments_course).permit(:content, :course_id, :user_id)
    end
end
