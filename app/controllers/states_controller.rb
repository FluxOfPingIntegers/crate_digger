class StatesController < ApplicationController
  def index
    @states = State.all
  end

  def search
byebug
  end

  def show
    state = params[:state_id]
    if !!state
      redirect_to state_cities_path(state)
    else
      redirect_to states_path
    end
  end
end
