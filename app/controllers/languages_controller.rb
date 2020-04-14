class LanguagesController < ApplicationController

    def index
        languages = Language.all
        render json: languages
    end

    def create
        language = Language.create(language_params)
        render json: language
    end

private

    def language_params
        params.require(:language).permit(:language, :language_code)
    end
end
