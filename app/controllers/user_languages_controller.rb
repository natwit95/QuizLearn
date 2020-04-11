class UserLanguagesController < ApplicationController
    def index
        user_languages = UserLanguage.all
        render json: user_languages
    end

    def create
        user_language = UserLanguage.create(user_language_params)
        render json: user_language
    end

    


private

    def user_language_params
        params.require(:user_language).permit(:language_id, :user_id)
    end
end
