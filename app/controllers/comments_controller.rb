class CommentsController < ApplicationController

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

  def destroy
  end

end
