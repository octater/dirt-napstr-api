# frozen_string_literal: true

class RemainsController < OpenReadController
  before_action :set_remain, only: [:show, :update, :destroy]

  # GET /remains
  def index
    # @remains = Remain.all
    if current_user
      @remains = current_user.remains
    else
      @remains = Remain.all
    end

    render json: @remains
  end

  # GET /remains/1
  def show
    render json: @remain
  end

  # POST /remains
  # def create
  #   @remain = Remain.new(remain_params)
  #
  #   if @remain.save
  #     render json: @remain, status: :created, location: @remain
  #   else
  #     render json: @remain.errors, status: :unprocessable_entity
  #   end
  # end

  def create
    @remain = current_user.remains.build(remain_params)

    if @remain.save
      render json: @remain, status: :created
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
    head :no_content
  end

  # private

  # Use callbacks to share common setup or constraints between actions.
  def set_remain
    @remain = current_user.remains.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def remain_params
    params.require(:remain).permit(:given_name, :sur_name, :entombment, :location, :comments, :dod, :relation_desc, :user_id)
  end

  private :set_remain, :remain_params
end
