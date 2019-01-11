class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end
    def create
        @task = Task.new(params.require(:task).permit(:text, :status))
        @task.save
        redirect_to root_path
    end
    def edit
        @task = Task.find(params[:id])
        @task.update(:status => true)
        puts "Edited:"
        puts @task.inspect
        redirect_to root_path
    end
end
