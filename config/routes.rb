Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins
  get 'items/index'
  get 'items/show'
  root to: "homes#top"
end
