class UsersController < ApplicationController
    before_action :find_user, only: [:show, :update, :destroy]

    def index
        users = User.All;
        render json: users
    end

    def show
        render json: user
    end

    def new
        user = User.new
    end

    def create
        user = User.create!(user_params)

        if user.save
            render json: user
        else
            render json: {error: user.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        user.update!(user_params)

        if user.save
            render json: user
        else
            render json: {error: user.errors.full_messages}, status: :not_acceptable
        end

    end

    def destroy
        user.destroy
        render json: {}
    end


    private

    def find_user
        user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :age, :email, :profile_image)
    end
end
