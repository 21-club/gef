module Gef
  module Api
    module V1
      class ContentTypesController < BaseController

        def index
          render json: ContentType.all
        end

        def create
          content_type = ContentType.new(content_type)

          if content_type.save
            render json: content_type, status: :created
          else
            render json: content_type.errors, status: :unprocessable_entity
          end
        end

        def destroy
          ContentType.find(params[:id]).destroy!

          head :no_content
        end

        def show
          render json: ContentType.find(params[:id])
        end

        private
        
        def content_type_params
          params.require(:content_type).permit(:name)
        end
      end
    end
  end
end