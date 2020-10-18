class ClubsController < ApplicationController

    def index
        clubs = Club.all 
        render json: clubs
    end

    def show
        club = Club.find(params[:id])
        render json: club
    end

    def new
        club = Club.new
    end

    def create
        club = Club.create!(club_params)
        if club.save
            movie = Movie.find_by(id: params[:movies][:id])
            Review.create!(movie: movie, club: club)
            render json: club
        else
            render json: {error: club.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        club = Club.find(params[:id])
        club.update!(club_params)
        if club.save
            render json: club
        else
            render json: {error: club.errors.full_messages}, status: :not_acceptable
        end

    end

    def destroy
        club = Club.find(params[:id])
        club.destroy
        render json: {}
    end

    private

    def club_params
        params.require(:club).permit(:name, :meeting_time, :description, :image, :movies)
    end
end
