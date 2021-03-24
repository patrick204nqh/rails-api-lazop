module Api
  module V1
    module Products
      class CategoriesController < ApplicationController
        layout nil
        def list
          @categories = ProductCategory.all
        end

        def show
          @category = ProductCategory.find_by(id: params[:id])
        end
      end
    end
  end
end