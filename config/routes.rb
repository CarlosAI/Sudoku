Rails.application.routes.draw do
  #get 'sudoku', to: 'sudoku#index'
  get '/choose', to: 'sudoku#choose'
  post '/play', to: 'sudoku#index'

  root 'sudoku#choose'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
