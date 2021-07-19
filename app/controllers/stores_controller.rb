class StoresController < ApplicationController
  def show
    @store = Store.find(params[:id])
    YelpApi.update_store(@store)
  end
end
