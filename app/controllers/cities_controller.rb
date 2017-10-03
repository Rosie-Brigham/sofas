class CitiesController < ApplicationController
  def index
    @cities = City.page(params[:page]).per(15)
  end
end