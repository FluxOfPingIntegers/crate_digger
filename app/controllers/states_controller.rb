class StatesController < ApplicationController
  def index
    @states = State.all
  end

  def search
byebug
  end

  def show
    @state = params[:state_id]
  end
end
