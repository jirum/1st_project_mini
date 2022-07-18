class Api::CitiesMunicipalitiesController < ApplicationController
  def index
    @cities_municipalities = CityMunicipality.all
    respond_to do |format|
      format.html
      format.json  {render json: @cities_municipalities , each_serializer: CityMunicipalitySerializer }
    end
  end
end
