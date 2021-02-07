module Gef
  module Api
    module V1
      class ContentsController < BaseController
        
        def index
          render json: Content.all
        end

        def create
          contents = Content.new(content_params)

          if content.save
            render json: content, status: :created
          else
            render json: content.errors, status: :unprocessable_entity
          end
        end

        def destroy
          Content.find(params[:id]).destroy!

          head :no_content
        end

        def show
          render json: Content.find(params[:id])
        end

        private
        
        def content_params
          params.require(:content).permit(:name, :content_type_id)
        end
      end
    end
  end
end