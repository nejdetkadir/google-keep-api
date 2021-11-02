class LabelsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_label, only: [:update, :show, :destroy]

  def index
    render json: current_user.labels
  end

  def create
    @label = current_user.labels.new(label_params)

    render json: @label.save ? @label : handle_error_messages(@label)
  end

  def show
    render json: @label
  end

  def destroy
    @label.destroy

    render json: {status: @label.destroyed?}
  end

  def update
    render json: @label.update(label_params) ? @label : handle_error_messages(@label)
  end

  private

  def set_label
    @label = current_user.labels.find(params[:id])
  end

  def label_params
    params.require(:label).permit(:name)
  end
end