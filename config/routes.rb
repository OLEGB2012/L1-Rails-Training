Rails.application.routes.draw do
  get 'bread_crumbs/reset'
  get 'bread_crumbs/ping'
  get 'bread_crumbs/pong'
  get 'bread_crumbs/index'
  get 'home/set_cookies'
  get 'home/show_cookies'
  get 'home/delete_cookies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
