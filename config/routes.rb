Rails.application.routes.draw do
  get 'page/index'
  root to: 'page#index'
  resources :posts do
    resources :comments, shallow: true
  end
  get ':year/:month/:day', to: redirect("/%{year}/0%{month}/0%{day}"), constraints: { year: /\d{4}/, month: /\d{1}/, day: /\d{1}/ }
  get ':year/:month/:day', to: redirect("/%{year}/0%{month}/%{day}"), constraints: { year: /\d{4}/, month: /\d{1}/, day: /\d{2}/ }
  get ':year/:month/:day', to: redirect("/%{year}/%{month}/0%{day}"), constraints: { year: /\d{4}/, month: /\d{2}/, day: /\d{1}/ }
  get ':year/:month', to: redirect("/%{year}/0%{month}"), constraints: { year: /\d{4}/, month: /\d{1}/ }
  get ':year(/:month(/:day))', to: 'posts#index', constraints: { year: /\d{4}/, month: /\d{2}/, day: /\d{2}/ }
  get 'home/index'
  get 'home/ping'
  get 'home/pong'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
