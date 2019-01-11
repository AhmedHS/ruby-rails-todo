class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end
    def create
        @task = Task.new(params.require(:task).permit(:text, :status))
        @task.save
        redirect_to todo_index_url
    end
end
