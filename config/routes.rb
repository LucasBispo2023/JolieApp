Rails.application.routes.draw do
  devise_for :admins

  namespace :quiz do
    resources :quiz_games

    get '/quiz_games/ranking', to: 'quiz_games#ranking'
    post '/quiz_games/checked_answers', to: 'quiz_games#checked_answers'
  end
  resources :diaries
  resources :drawings
  post '/draw', to: 'drawings#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'main/with_love', to: 'main#with_love'
  # Defines the root path route ("/")
  root "main#index"
end
