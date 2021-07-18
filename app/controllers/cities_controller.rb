class CitiesController < ApplicationController
  def index
    @state = params[:state_id]
  end

  def show
  end
end
