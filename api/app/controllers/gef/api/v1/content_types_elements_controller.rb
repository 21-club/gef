module Gef
  module Api
    module V1
      class ContentTypesElementsController < BaseController
        
        def index
          render json: ContentTypesElement.all
        end

        def create
          content_types_element = ContentTypesElement.new(content_types_element_params)

          if content_types_element.save
            render json: content_types_element, status: :created
          else
            render json: content_types_element.errors, status: :unprocessable_entity
          end
        end

        def destroy
          ContentTypesElement.find(params[:id]).destroy!

          head :no_content
        end

        def show
          render json: ContentTypesElement.find(params[:id])
        end

        private
        
        def content_types_element_params
          params.require(:content_types_elements).permit(:content_type_id, :element_id, :title, :guideline) #FIXME: non sono sicuro che vadano gli id dei collegamenti, qua come anche negli altri cotroller
        end
      end
    end
  end
end
