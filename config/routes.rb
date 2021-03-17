Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#index'

  get '/gallery', to: 'homes#gallery'
  get '/contact', to: 'homes#contact'
  get '/about', to: 'homes#about'

  namespace :admin do
    root 'homes#index'

    devise_for :users, controllers: {
      sessions: 'admin/sessions',
      registrations: 'admin/registrations'
    }
    authenticated :admin_user do
      root to: 'admin/homes#index', as: :user_root
    end

    resources :photographs do 
      member do
        get :reupload
      end
    end
  end
end
