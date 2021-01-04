Rails.application.routes.draw do
  
   # get ':controller(/:action(/:id(.:format)))'

  root to: "welcome#index"

  get 'welcome/brand', to: 'welcome#brand' 
  get 'welcome/customer', to: 'welcome#customer' 

  resources :challenges 
  resources :tricks

  devise_for :customers, :controllers => { :registrations => :registrations } 

  devise_for :brands,    :controllers => { :registrations => :registrations }

end
