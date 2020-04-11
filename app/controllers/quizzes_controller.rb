class QuizzesController < ApplicationController
    def index
        quiz = Quiz.all
        render json: quiz
    end

    def create
        quiz = Quiz.create(quiz_params)
        render json: quiz
    end

private

    def quiz_params
        params.require(:quiz).permit(:user_id, :score)
    end
end