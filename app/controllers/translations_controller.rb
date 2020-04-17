class TranslationsController < ApplicationController
    require 'rest-client'

    def index
        translations = Translation.all
        # languages = Language.all 
        render json: translations
    end

    def translate
        
        key = `gcloud auth application-default print-access-token`.strip

        response = RestClient.post("https://translation.googleapis.com/language/translate/v2", { q: params["q"],source: params["source"],target: params["target"],format: "text" }.to_json, { "Accept" => "application/json", "Content-Type" => "application/json", "Authorization" => "Bearer #{key}"} )
        hash = JSON.parse(response.body)
        text = hash['data']['translations'][0]['translatedText']
        # lang_id = Language.find_by(language_code: params['target']).id

        # translation = Translation.create(user_id: 1, language_id: lang_id, input: params['q'], output: text)
        render json: {translation: text}
    end

    def create 
        translation = Translation.create(translation_params)
        render json: {translation: text}

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
        params.require(:translation).permit(:user_id, :language_id, :input, :output)
    end
end