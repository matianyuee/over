Rails.application.routes.draw do
  get 'leavedatail/new'

  get 'resignation/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => redirect('/admin/dashboard')
  get  "admin/dashboard" => "admin/dashboard#index", :as => 'user_root' # after sign in on admin page
  devise_for :users
  namespace :admin do
    get '/', :to => redirect('/admin/dashboard')
    resources :departmentinfo do
       member do
         get 'destroy'
       end
      collection do
          match 'merge', :via => ['get','post']
      end
    end
    resources :staffinfo do
      member do
        get 'destroy'
        get 'show'
      end
      collection do
        match 'groupleader', :via =>[:get,:post]
        get 'department_position'
      end
    end
    resources :workexperience
    resources :position do
      member do
        get 'show'
        get 'destroy'

      end
    end
    resources :resignation
    resources :leavedatail
  end
end
