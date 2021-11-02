class CollaboratorsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_note
  before_action :set_collaborator, only: [:destory]

  def index
    render json: @note.collaborators
  end

  def create
    @collaborator = @note.collaborators.new(collaborator_params)

    render json: @collaborator.save ? @collaborator : handle_error_messages(@collaborator)
  end

  def destroy
    @collaborator.destroy

    render json: {status: @collaborator.destroyed?}
  end

  private

  def set_note
    @note = current_user.notes.find(params[:note_id])
  end

  def set_collaborator
    @collaborator = @note.collaborators.find(params[:id])
  end

  def collaborator_params
    params.require(:collaborator).permit(:user_id)
  end
end
