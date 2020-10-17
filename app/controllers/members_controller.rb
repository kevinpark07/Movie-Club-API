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
        member = Member.create!(member_params)

        if member.save
            render json: member
        else
            render json: {error: member.errors.full_messages}, status: :not_acceptable
        end
    end

    private

    def member_params
        params.require(:member).permit(:user, :club)
    end

end
