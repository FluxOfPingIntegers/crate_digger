class StoresController < ApplicationController
  def show
    @store = Store.find(params[:id])
    YelpApi.update_store(@store)
    if logged_in?
      @comment = @store.comments.build(user_id: current_user.id)
    end
  end
end
