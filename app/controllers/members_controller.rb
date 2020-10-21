class MembersController < ApplicationController
    
    def index
        members = Member.all;
        render json: members
    end

    def show
        member = Member.find(params[:id])
        render json: member
    end

    def new
        member = Member.new
    end

    def create
        club = Club.find_by(id: params[:club][:id])
        user = User.find_by(id: params[:user][:id])
        member = Member.create!(club: club, user: user)

        if member.save
            render json: member
        else
            render json: {error: member.errors.full_messages}, status: :not_acceptable
        end
    end

    def destroy
        member = Member.find(params[:id])
        member.destroy
        render json: {}
    end

    private

    def member_params
        params.require(:member).permit(:user, :club)
    end

end
