class CommentsController < ApplicationController
  before_action :verify_comment, only: [:edit, :update, :destroy]

  def create
    @comment = current_user.comments.new(store_id: params[:store_id], content: params[:comment][:content])
    @store = Store.find(params[:store_id])
    if @comment.valid?
      @comment.save
      redirect_to store_path(@store)
    else
      render :template => "stores/show"
    end
  end

  def edit
    
  end

  def update

  end

  def destroy
  end

  private

  def verify_comment
    comment = Comment.find(params[:id])
    if current_user == User.find(params[:user_id]) && current_user == comment.user
        @comment = comment
    else
      flash[:errors] = "Action was not authorized"
      redirect_to root_path
    end
  end

end
