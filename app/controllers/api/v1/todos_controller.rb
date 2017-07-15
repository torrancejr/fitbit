class Api::V1::TodosController < ApplicationController

  def index
    render json: Post.all
  end

  def destroy
    Todo.where(id: params[:id]).destroy_all
  end

  def create
    user = current_user
    body = params[:body]
    Todo.create(user_id: user.id, text: text, completed: false)
    render json: { post: text }
  end

end
