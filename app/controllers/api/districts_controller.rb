class Api::DistrictsController < ApplicationController
  def index
    @districts = District.all
    respond_to do |format|
      format.html
      format.json  {render json: @districts, each_serializer: DistrictSerializer }
    end
  end
end
