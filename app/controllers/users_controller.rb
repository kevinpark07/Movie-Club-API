class UsersController < ApplicationController

    def index
        users = User.all;
        render json: users
    end

    def show
        user = User.find(params[:id])
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
        user = User.find(params[:id])
        user.update!(user_params)

        if user.save
            render json: user
        else
            render json: {error: user.errors.full_messages}, status: :not_acceptable
        end

    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {}
    end


    private

    def user_params
        params.require(:user).permit(:name, :age, :email, :profile_image, :username, :password)
    end
end
