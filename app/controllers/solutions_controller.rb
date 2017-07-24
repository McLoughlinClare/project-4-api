class SolutionsController < ApplicationController
  before_action :set_solution, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!

  # GET /solutions
  def index
    @solutions = Solution.all

    render json: @solutions
  end

  # GET /solutions/1
  def show
    render json: @solution
  end

  # POST /solutions
  def create
    @solution = Solution.new(solution_params)
    @solution.student = current_user

    if @solution.save
      render json: @solution, status: :created, location: @solution
    else
      render json: @solution.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /solutions/1
  def update
    if @solution.update(solution_params)
      render json: @solution
    else
      render json: @solution.errors, status: :unprocessable_entity
    end
  end

  # DELETE /solutions/1
  def destroy
    @solution.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solution
      @solution = Solution.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def solution_params
      params.permit(:challenge_id, :student_id, :answer, :correct)
    end
end
