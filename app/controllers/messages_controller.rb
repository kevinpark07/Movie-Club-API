class MessagesController < ApplicationController
before_action :find_message, only: [:show]
    
    def index
        messages = Message.All;
        render json: messages
    end

    def show
        render json: message
    end

    def new
        message = Message.new
    end

    def create
        message = Message.create!(message_params)

        if message.save
            render json: message
        else
            render json: {error: message.errors.full_messages}, status: :not_acceptable
        end
    end


    private

    def find_message
        message = Message.find(params[:id])
    end

    def message_params
        params.require(:message).permit(:content, :user, :club)
    end

end
