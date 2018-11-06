class TemariesController < ApplicationController
  before_action :set_temary, only: [:show, :update, :destroy]

  # GET /temaries
  def index
    @temaries = Temary.all

    render json: @temaries
  end

  # GET /temaries/1
  def show
    render json: @temary
  end

  # POST /temaries
  def create
    @temary = Temary.new(temary_params)

    if @temary.save
      render json: @temary, status: :created, location: @temary
    else
      render json: @temary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /temaries/1
  def update
    if @temary.update(temary_params)
      render json: @temary
    else
      render json: @temary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /temaries/1
  def destroy
    @temary.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temary
      @temary = Temary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def temary_params
      params.require(:temary).permit(:Title, :course_id)
    end
end
