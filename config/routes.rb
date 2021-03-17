Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#index'

  get '/gallery', to: 'homes#gallery'
  get '/contact', to: 'homes#contact'
  get '/about', to: 'homes#about'
end
