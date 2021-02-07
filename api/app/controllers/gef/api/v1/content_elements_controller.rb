module Gef
  module Api
    module V1
      class ContentElementsController < BaseController

        def index
          render json: ContentElement.all
        end

        def create
          content_element = ContentElement.new(content_element_params)

          if content_element.save
            render json: content_element, status: :created
          else
            render json: content_element.errors, status: :unprocessable_entity
          end
        end

        def destroy
          ContentElement.find(params[:id]).destroy!

          head :no_content
        end

        def show
          render json: ContentElement.find(params[:id])
        end

        private
        
        def content_element_params
          params.require(:content_element).permit(:elements_data_id, :content_types_elements_id, :content_id) #FIXME: secondo me non dovrebbero esserci gli ids ma non saprei come scriverlo
        end

      end
    end
  end
end
