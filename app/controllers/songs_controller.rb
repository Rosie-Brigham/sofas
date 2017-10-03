class SongsController < ApplicationController

  def index
    # @songs = Song.all

    @songs = Song.page(params[:page]).per(15)
  end
end