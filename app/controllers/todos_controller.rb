class TodosController < ApplicationController
  def index
    # Instance variable
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(title: "...")

    if @todo.save
      redirect_to index
    end
  end

  private
    def todo_params
      params.require(:todo).permit(:title)
    end
end
