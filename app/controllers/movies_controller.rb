class MoviesController < ApplicationController
    def index
        movies = Movie.all;
        render json: movies
    end

    def show
        movie = Movie.find(params[:id])
        render json: movie
    end

    def update
        movie = Movie.find(params[:id])
        movie.update!(movie_params)

        if movie.save
            render json: movie
        else
            render json: {error: movie.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def movie_params
        params.require(:movie).permit(:title, :director, :year, :image, :description)
    end

end
