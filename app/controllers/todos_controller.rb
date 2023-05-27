class TodosController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]
  
  def index
    # Instance variable
    @todos = Todo.all
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save

    redirect_to root_path
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to root_path
  end

  private
    def todo_params
      params.require(:todo).permit(:title)
    end
end
