class ReviewsController < ApplicationController

    def index
        reviews = Review.all;
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def new
        review = Review.new
    end

    def create
        review = Review.create!(review_params)

        if review.save
            render json: review
        else
            render json: {error: review.errors.full_messages}, status: :not_acceptable
        end
    end

    def update
        review = Review.find(params[:id])
        review.update!(review_params)

        if review.save
            render json: review
        else
            render json: {error: review.errors.full_messages}, status: :not_acceptable
        end

    end

    private

    def review_params
        params.require(:review).permit(:description, :rating, :movie, :club)
    end
    
end
