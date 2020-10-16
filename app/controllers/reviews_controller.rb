class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :update]

    def index
        reviews = Review.All;
        render json: reviews
    end

    def show
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
        review.update!(review_params)

        if review.save
            render json: review
        else
            render json: {error: review.errors.full_messages}, status: :not_acceptable
        end

    end

    private

    def find_review
        review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:description, :rating, :movie, :club)
    end
    
end
