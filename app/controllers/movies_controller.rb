class MoviesController < ApplicationController
  def index
  end

  def now
    Tmdb::Api.key('76a5c60d4eb397b26f90d390c849ccbf')
    Tmdb::Api.language('pt-BR')
    @now_playing = Tmdb::Movie.now_playing
  end
end
