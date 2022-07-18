class Api::ProvincesController < ApplicationController
  def index
    @provinces = Province.all
    respond_to do |format|
      format.html
      format.json  {render json: @provinces, each_serializer: ProvinceSerializer }
    end
  end
end
