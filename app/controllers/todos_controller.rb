class TodosController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]
  
  def index
    # Instance variable
    if logged_in?
      @todos = current_user.todos.all
      @todo = current_user.todos.new
    else
      @todos = []
      @todo = Todo.new
    end
  end

  def create
    # @todo = Todo.new(todo_params)
    @todo = current_user.todos.new(todo_params)
    @todo.save

    redirect_to root_path
  end

  def destroy
    @todo = current_user.todos.find(params[:id])
    @todo.destroy

    redirect_to root_path
  end

  private
    def todo_params
      params.require(:todo).permit(:title)
    end
end
