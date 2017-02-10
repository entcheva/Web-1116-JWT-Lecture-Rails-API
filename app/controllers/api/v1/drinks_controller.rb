module Api
  module V1
    class DrinksController < ApplicationController
      def index
        render json: Drink.all
      end

      def show
        @drink = Drink.find(params[:id])
        render json: @drink
      end

      def create
      end
    end
  end
end
