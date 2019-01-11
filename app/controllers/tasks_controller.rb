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
        if @task.status == true
            @task.update(:status => false)
        else @task.status == false
            @task.update(:status => true)
        end
        redirect_to root_path
    end
    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to root_path
    end
end
