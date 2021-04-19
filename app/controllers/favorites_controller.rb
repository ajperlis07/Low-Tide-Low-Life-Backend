class FavoritesController < ApplicationController

    def index
        @favorites = Favorite.order(:id)
        render json: @favorites
    end

    def show
        @favorite = Favorite.find(params[:id])
        render json: @favorite
    end

    def new
        @favorite = Favorite.new
        render json: @favorite
    end

    def create
        @favorite = Favorite.create(favorite_params)
        render json: @favorite
    end

    def edit
        @favorite = Favorite.find(params[:id])
        render json: @favorite
    end

    def update
        @favorite = Favorite.find(params[:id])
        @favorite.update(favorite_params)
        render json: @favorite
    end

    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy
        render json: @favorite
    end

    private

    def favorite_params
        params.permit(:user_id, :recipe_id, :fish_id)
    end

end
