class TasksController < ApplicationController
    def create
        render plain: params[:task].inspect
    end
end
