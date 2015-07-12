Rails.application.routes.draw do

  root to: 'welcome#index'
  # can use also: get '/', to: 'welcome#index'
  
  resources :words

end
