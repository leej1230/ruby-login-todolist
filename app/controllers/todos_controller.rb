class TodosController < ApplicationController
  def index
    # Instance variable
    @todos = Todo.all
  end
end
