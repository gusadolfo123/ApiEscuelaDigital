class CommentsLessonsController < ApplicationController
  before_action :set_comments_lesson, only: [:show, :update, :destroy]

  # GET /comments_lessons
  def index
    # @comments_lessons = CommentsLesson.all
    @comments_lessons = CommentsLesson.filter(params.slice(:user_id))

    render json: @comments_lessons
  end

  # GET /comments_lessons/1
  def show
    render json: @comments_lesson
  end

  # POST /comments_lessons
  def create
    @comments_lesson = CommentsLesson.new(comments_lesson_params)

    if @comments_lesson.save
      render json: @comments_lesson, status: :created, location: @comments_lesson
    else
      render json: @comments_lesson.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments_lessons/1
  def update
    if @comments_lesson.update(comments_lesson_params)
      render json: @comments_lesson
    else
      render json: @comments_lesson.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments_lessons/1
  def destroy
    @comments_lesson.destroy
  end

  private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_comments_lesson
      @comments_lesson = CommentsLesson.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comments_lesson_params
      params.require(:comments_lesson).permit(:content, :lesson_id, :user_id)
    end
end
