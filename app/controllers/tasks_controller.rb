class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new(title: '...', details: '...')
  end

  def create
    @task = Task.new(params[:task])
    @task.save
  end
end
