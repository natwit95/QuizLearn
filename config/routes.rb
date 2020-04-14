Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :translations
  post '/translator', to: 'translations#translate'
  resources :quizzes
  resources :quiz_translations
  resources :languages
  resources :user_languages
end
