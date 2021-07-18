class CitiesController < ApplicationController
  def index
    @state = State.find(params[:state_id])
  end

  def show
    @city = City.find(params[:id])
  end
end
