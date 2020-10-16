class MoviesController < ApplicationController
    def index
        movies = Movie.All;
        render json: movies
    end

    def show
        movie = Movie.find(params[:id])
        render json: movie
    end

end
