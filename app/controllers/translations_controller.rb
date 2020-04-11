class TranslationsController < ApplicationController
    def index
        translations = Translation.all
        render json: translations
    end

    def create
        translation = Translation.create(translation_params)
        render json: translation
    end

    def show
        translations = Translation.find(params[:id])
        render json: translations
      end

    def destroy 
        translation = Translation.find_by(params[:id])
        translation.destroy 
    end

private

    def translation_params
        params.require(:translation).permit(:user_language_id, :input, :output)
    end
end