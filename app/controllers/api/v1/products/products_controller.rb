module Api
  module V1
    module Products
      class ProductsController < ApplicationController
        # layout nil
        def list
          @products = Product.all
        end

        def show
          @product = Product.find_by(id: params[:id])
          render json: @product
        end

      end
    end
  end
end