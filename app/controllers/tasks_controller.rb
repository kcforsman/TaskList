class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    id = params[:id]
    @task = Task.find(id)
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new
    task.name = params[:task][:name]
    task.description = params[:task][:description]
    task.completed = false
    if task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def complete
  end
end
