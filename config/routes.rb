Rails.application.routes.draw do
  
   # get ':controller(/:action(/:id(.:format)))'

  root to: "welcome#index"
  get 'user/tricks', to: 'tricks#user_tricks'
  get 'rewards/users_tricks', to: 'rewards#users_tricks'
  get 'rewards/give_rewards', to: 'rewards#give_rewards'

 

  resources :challenges 
  resources :tricks

  devise_for :customers, :controllers => { :registrations => :registrations } 

  devise_for :brands,    :controllers => { :registrations => :registrations }

end
