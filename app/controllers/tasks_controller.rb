class TasksController < ApplicationController
    
    def index
        @tasks = Task.all.order(created_at: :desc)
    end
    
    def create
        Task.create(content: params[:content])
    end
end
