class ActionsController < ApplicationController
  def index
  end

  def create
    @action = @post.action.new(action_params)
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def show
  end

  private
  
  def action_params
    params.require(:action).permit(:action,:status).merge(user_id: current_user.id, post_id: params[:post_id])
  end
end
