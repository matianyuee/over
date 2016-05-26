Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get  "admin/dashboard" => "admin/dashboard#index", as: 'user_root' # after sign in on admin page
  namespace :admin do
    devise_for :users
  end
end
