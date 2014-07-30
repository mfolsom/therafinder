BaseApp::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get "pages/index"

  get "pages/profile" => "pages#profile", :as => :user


  get "/admin" => "admin/base#index", :as => "admin"


  namespace "admin" do

    resources :users

  end
  resources :profiles

  root :to => "pages#index"

end
