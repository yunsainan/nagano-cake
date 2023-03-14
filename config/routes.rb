Rails.application.routes.draw do
  
  root to: 'public/homes#top'


  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] , controllers: {
    sessions: "admin/sessions"
  }
  
   # 管理者用
  namespace :admin do
   # top
    get '/' => 'homes#top'
    resources :items, except: [:destroy ]
    resources :genres, only: [:create, :index, :edit, :update ]
    resources :customers, only: [:index, :show, :edit, :update ]
    resources :orders, only: [:show, :update ]
    resources :order_history_details, only: [:update]
  end
end
