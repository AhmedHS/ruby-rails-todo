class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end
    def create
        @task = Task.new(params.require(:task).permit(:text, :status))
        @task.save
    end
    def show
        @task = Task.find(params[:id])
    end
end
