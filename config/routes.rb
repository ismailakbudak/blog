Rails.application.routes.draw do

  get 'welcome/index'
  get 'welcome/help'
  get 'welcome/about'
  root 'welcome#index' 
  
  resources :articles do
     resources :comments
  end
  
end
