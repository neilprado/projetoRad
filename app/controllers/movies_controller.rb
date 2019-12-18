class MoviesController < ApplicationController
  def index
    Tmdb::Api.key('76a5c60d4eb397b26f90d390c849ccbf')
    Tmdb::Api.language('pt-BR')
    @now_playing = Tmdb::Movie.now_playing
  end

  def now
    Tmdb::Api.key('76a5c60d4eb397b26f90d390c849ccbf')
    Tmdb::Api.language('pt-BR')
    @now_playing = Tmdb::Movie.find("batman")
  end

  def search
    Tmdb::Api.key('76a5c60d4eb397b26f90d390c849ccbf')
    Tmdb::Api.language(params[:idioma])

    @now_playing = Tmdb::Movie.find(params[:title])
  end

end
