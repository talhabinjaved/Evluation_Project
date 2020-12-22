Rails.application.routes.draw do
  # root "welcome#index"
  # get 'welcome/index', to: 'welcome#index'
  # get 'welcome/customer', to: 'welcome#customer'
  
  get ':controller(/:action(/:id(.:format)))'

  devise_for :customers, :controllers => { :registrations => :registrations }
  devise_for :brands,    :controllers => { :registrations => :registrations }

end
