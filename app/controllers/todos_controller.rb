class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @projects = Project.all
  end

  def update
  end

  def create
  end
end
