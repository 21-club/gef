module Gef
  module Api
    module V1
      class ElementsDatasController < BaseController
        
        def index
          render json: ElementsData.all
        end

        def create
          elements_data = ElementsData.new(elements_data_params)

          if elements_data.save
            render json: elements_data, status: :created
          else
            render json: elements_data.errors, status: :unprocessable_entity
          end
        end

        def destroy
          ElementsData.find(params[:id]).destroy!

          head :no_content
        end

        def show
          render json: ElementsData.find(params[:id])
        end

        private
        
        def elements_data_params
          params.require(:elements_data).permit(:type, :data)
        end
      end
    end
  end
end
