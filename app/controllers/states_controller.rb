class StatesController < ApplicationController
  def index
    @states = State.all_by_country_name(params[:country_name])

    respond_to do |format|
      format.json { render json: @states.map(&:name) }
    end
  end
end
