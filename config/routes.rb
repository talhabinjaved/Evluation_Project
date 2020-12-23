Rails.application.routes.draw do
  # get 'challenges/index'
  # root "welcome#index"
  # get 'welcome/index', to: 'welcome#index'
  # get 'welcome/customer', to: 'welcome#customer'
  
  get ':controller(/:action(/:id(.:format)))'
  
  resources :challenges
  devise_for :customers, :controllers => { :registrations => :registrations }
  devise_for :brands,    :controllers => { :registrations => :registrations }

end
