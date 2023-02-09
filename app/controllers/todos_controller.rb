class TodosController < ApplicationController
    before_action :set_todo, only: [:show, :edit, :update, :destroy]

    def index
        @todos=Todo.all
    end

    def new
        @todo=Todo.new
    end

    def show
     
    end

    def create
        @todo=Todo.new(todo_params)
        if @todo.save
            flash[:name]="it is created succesfully"
            redirect_to todo_path(@todo)
        else
            render 'new'   
        end
    end

    def edit
       
    end

    def update
        # @todonew=Todo.new(todo_params)
        # @todo=Todo.find(params[:id])
        # @todo.name=@todonew.name
        # @todo.description=@todonew.description
        # @todo.save
       
        if @todo.update(todo_params)
            flash[:name]="updated successfull"
            redirect_to todo_path(@todo)
        else
            render 'edit'
        end

    end
    
    def destroy
        # debugger
        
        @todo.destroy
        flash[:name]="deleted successfull"
        # redirect_to todos_path
        respond_to do |format|
            format.html { redirect_to todos_path }
            format.json { head :no_content }
            format.js   { render :layout => false }
         end
    end



    private

    def set_todo
        @todo=Todo.find(params[:id])
    end

    def todo_params
        params.require(:todo).permit(:name ,:description)
    end

end
