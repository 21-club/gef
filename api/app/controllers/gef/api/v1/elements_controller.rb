module Gef
  module Api
    module V1
      class ElementsController < BaseController
        
        def index
          render json: Elements.all
        end

        def create
          element = Element.new(element_params)

          if element.save
            render json: element, status: :created
          else
            render json: element.errors, status: :unprocessable_entity
          end
        end

        def destroy
          Element.find(params[:id]).destroy!

          head :no_content
        end

        def show
          render json: Element.find(params[:id])
        end

        private
        
        def element_params
          params.require(:element).permit(:type)
        end
      end
    end
  end
end
