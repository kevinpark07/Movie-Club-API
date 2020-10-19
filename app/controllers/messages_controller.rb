class MessagesController < ApplicationController
    
    def index
        messages = Message.all;
        render json: messages
    end

    def show
        message = Message.find(params[:id])
        render json: message
    end

    def new
        message = Message.new
    end

    def create
        club = Club.find_by(id: params[:club][:id])
        user = User.find_by(id: params[:user][:id])
        message = Message.create!(content: message_params[:content], club: club, user: user)
        if message.save
            render json: message
        else
            render json: {error: message.errors.full_messages}, status: :not_acceptable
        end
    end


    private


    def message_params
        params.require(:message).permit(:content, :user, :club)
    end

end
