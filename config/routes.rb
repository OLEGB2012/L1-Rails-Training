Rails.application.routes.draw do
  root to: 'game#index'
  get 'game/ping'
  get 'game/pong'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
