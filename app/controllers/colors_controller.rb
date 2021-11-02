class ColorsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_color, only: [:update, :show, :destroy]
  
  def index
    render json: current_user.colors
  end

  def create
    @color = current_user.colors.new(color_params)

    render json: @color.save ? @color : handle_error_messages(@color)
  end

  def show
    render json: @color
  end

  def destroy
    @color.destroy

    render json: {status: @color.destroyed?}
  end

  def update
    render json: @color.update(color_params) ? @color : handle_error_messages(@color)
  end

  private

  def set_color
    @color = current_user.colors.find(params[:id])
  end

  def color_params
    params.require(:color).permit(:color)
  end
end
