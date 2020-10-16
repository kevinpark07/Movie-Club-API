class ClubsController < ApplicationController
    before_action :find_club, only: [:show, :update]

    def index
        clubs = Club.All 
        render json: clubs
    end

    def show
        render json: club
    end

    def new
        club = Club.new
    end

    def create
        club = Club.create!(club_params)

        if club.save
            render json: club
        else
            render json: {error: club.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        club.update!(club_params)

        if club.save
            render json: club
        else
            render json: {error: club.errors.full_messages}, status: :not_acceptable
        end

    end


    private

    def find_club
        club = Club.find(params[:id])
    end

    def club_params
        params.require(:club).permit(:name, :meeting_time, :description, :image)
    end
end
