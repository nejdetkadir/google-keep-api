class ImagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_note
  before_action :set_image, only: [:destroy]

  def index
    render json: @note.images
  end

  def create
    @image = @note.images.new(image_params)

    render json: @image.save ? @image : handle_error_messages(@image)
  end

  def destroy
    @image.destroy

    render json: {status: @image.destroyed?}
  end

  private

  def set_note
    @note = current_user.notes.find(params[:note_id])
  end

  def set_image
    @image = @note.images.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:image)
  end
end
