Rails.application.routes.draw do

  devise_for :views
  devise_for :users
	root 'semesters#index'

  resources :recitals
  resources :semesters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
