require 'json'
module Api
  module V1
    module Products
      class ProductsController < ApplicationController
        def index
        end

        def list
          @products = Product.all
        end

        def show
          @product = Product.find_by(id: params[:id])
        end

      end
    end
  end
end
