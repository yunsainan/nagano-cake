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
   resources :genres, only: [:create, :index, :edit, :update ]
  end
end
