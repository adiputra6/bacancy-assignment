class CountryController < ApplicationController
	def index
  	@countries = Country.all_by_continent_name(params[:continent_name])

    respond_to do |format|
      format.json { render json: @countries.map(&:name) }
    end
  end
end
