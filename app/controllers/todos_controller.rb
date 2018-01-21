class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @projects = Project.all
  end

  def update
  end

  def create

    @todo = Todo.new params.require(:todo).permit(:text, :project_id)
    respond_to do |format|
      format.html { redirect_to root_url } if @todo.save
    end
  
  end
end
