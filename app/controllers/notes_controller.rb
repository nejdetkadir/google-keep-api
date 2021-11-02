class NotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_note, only: [:update, :show, :destroy]

  def index
    render json: Note.statuses.include?(params[:status].to_sym) ? current_user.notes.send(params[:status].to_sym) : current_user.notes,
      include: [
        :label,
        :todos,
        :images,
        :collaborators,
        :color
      ]
  end

  def create
    @note = current_user.notes.new(note_params)

    render json: @note.save ? @note : handle_error_messages(@note)
  end

  def show
    render json: @note
  end

  def destroy
    @note.destroy

    render json: {status: @note.destroyed?}
  end

  def update
    render json: @note.update(note_params) ? @note : handle_error_messages(@note)
  end

  private

  def set_note
    @note = current_user.notes.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:label_id, :color_id, :status, :is_pinned, :title, :content, :extra, :sequence)
  end
end
