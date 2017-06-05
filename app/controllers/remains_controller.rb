class RemainsController < ApplicationController
  before_action :set_remain, only: [:show, :update, :destroy]

  # GET /remains
  def index
    @remains = Remain.all

    render json: @remains
  end

  # GET /remains/1
  def show
    render json: @remain
  end

  # POST /remains
  def create
    @remain = Remain.new(remain_params)

    if @remain.save
      render json: @remain, status: :created, location: @remain
    else
      render json: @remain.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /remains/1
  def update
    if @remain.update(remain_params)
      render json: @remain
    else
      render json: @remain.errors, status: :unprocessable_entity
    end
  end

  # DELETE /remains/1
  def destroy
    @remain.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remain
      @remain = Remain.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def remain_params
      params.require(:remain).permit(:given_name, :sur_name, :entombment, :location, :comments, :dob, :dod, :relation_desc)
    end
end
