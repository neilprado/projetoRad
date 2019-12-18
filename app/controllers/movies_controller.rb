class MoviesController < ApplicationController
  def index
    Tmdb::Api.key('76a5c60d4eb397b26f90d390c849ccbf')
    Tmdb::Api.language('pt-BR')
    @now_playing = Tmdb::Movie.now_playing
  end

  def popular
    Tmdb::Api.key('76a5c60d4eb397b26f90d390c849ccbf')
    Tmdb::Api.language('pt-BR')
    @popular = Tmdb::Movie.popular
  end

  def upcoming
    Tmdb::Api.key('76a5c60d4eb397b26f90d390c849ccbf')
    Tmdb::Api.language('pt-BR')
    @upcoming = Tmdb::Movie.upcoming
  end

  def search
    Tmdb::Api.key('76a5c60d4eb397b26f90d390c849ccbf')
    Tmdb::Api.language(params[:idioma])    
    @search = Tmdb::Movie.find(params[:title])
  end

  def show
    Tmdb::Api.key('76a5c60d4eb397b26f90d390c849ccbf')
    Tmdb::Api.language('pt-BR')
    @comments = Comment.where(["idFilme = ?", params[:id]])
    puts @comments
    @comment = Comment.new
    @movie = Tmdb::Movie.detail(params[:id])
  end  

end
