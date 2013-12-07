class CitiesController < ApplicationController
  def index
    @cities = City.all_by_state_name(params[:state_name])

    respond_to do |format|
      format.json { render json: @cities.map(&:name) }
    end
  end
end
