class FishController < ApplicationController

    def index
        @fish = Fish.order(:id)
        render json: @fish
    end

    def show
        @fish = Fish.find(params[:id])
        render json: @fish
    end

    def new
        @fish = Fish.new()
        render json: @fish
    end

    def create
        @fish = Fish.create(fish_params)
        render json: @fish
    end

    def destroy
        @fish = Fish.find(params[:id])
        @fish.destroy
        render json: @fish
    end

    private

    def fish_params
        params.permit(:species_name, :scientific_name, :image_gallery, :biology, :population, :calories, :carbohydrate, :cholesterol, :fat_total, :health_benefits, :physical_description, :protein, :saturated_fat, :selenium, :serving_weight, :sodium, :path) 
    end
end

