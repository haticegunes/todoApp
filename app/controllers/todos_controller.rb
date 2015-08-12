class TodosController < ApplicationController
	before_action :authenticate_user!

  def index
  	@todos=current_user.todos
  end

  def create

  	@todo=Todo.new(params[:todo].permit(:content))
  	@todo.user =current_user
  	@todo.save
	redirect_to root_path
  end

  def destroy
  	Todo.delete(params[:id])
  	redirect_to root_path
  end

end
