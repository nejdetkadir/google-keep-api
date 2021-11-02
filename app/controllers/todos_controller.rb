class TodosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_note
  before_action :set_todo, only: [:update, :show, :destroy]

  def index
    render json: @note.todos
  end

  def create
    @todo = @note.todos.new(todo_params)

    render json: @todo.save ? @todo : handle_error_messages(@todo)
  end

  def show
    render json: @todo
  end

  def destroy
    @todo.destroy

    render json: {status: @todo.destroyed?}
  end

  def update
    render json: @todo.update(todo_params) ? @todo : handle_error_messages(@todo)
  end

  private

  def set_note
    @note = current_user.notes.find(params[:note_id])
  end

  def set_todo
    @todo = @note.todos.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:content, :status, :sequence)
  end
end
