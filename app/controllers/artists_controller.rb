class ArtistsController < ApplicationController
  def index
    @artists = Artist.page(params[:page]).per(15)
  end
end