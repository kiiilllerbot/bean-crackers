module Api
  module V1
    class CoffeesController < ApplicationController

      protect_from_forgery with: :null_session

      def index
        coffees = Coffee.all
        render json: CoffeeSerializer.new(coffees, options).serialized_json
      end

      def show
        coffee = Coffee.find_by(slug: params[:slug])

        render json: CoffeeSerializer.new(coffee, options).serialized_json
      end

      def create
        coffee = Coffee.new(coffee_params)

        if coffee.save
          render json: CoffeeSerializer.new(coffee).serialized_json
        else
          render json: { error: coffee.errors.messages}, status: 422
        end
      end

      def update
        coffee = Coffee.find_by(slug: params[:slug])

        if coffee.update(coffee_params)
          render json: CoffeeSerializer.new(coffee, options).serialized_json
        else
          render json: { error: coffee.errors.messages}, status: 422
        end
      end

      def destroy
        coffee = Coffee.find_by(slug: params[:slug])

        if coffee.destroy
          head :no_content
        else
          render json: { error: coffee.errors.messages}, status: 422
        end
      end

      private
      def coffee_params
        params.require(:coffee).permit(:name, :image_url)
      end

      def options
        @options ||= { include: %i[reviews]}
      end
    end
  end
end