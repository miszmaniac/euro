Euro::Application.routes.draw do
  scope "(:locale)", :locale => /en|pl/ do
    resources :matches do
      resources :bets
    end

    resources :users
    resources :sessions, only: [:new, :create, :destroy]

    match '/uzytkownicy',  to: 'users#index', :as => :usersindex
    match '/zaloz_konto',  to: 'users#new', :as => :signup
    match '/zaloguj',  to: 'sessions#new', :as => :signin
    match '/wyloguj', to: 'sessions#destroy', via: :delete,  :as => :signout
    match '/edytuj_konto', to: 'sessions#edit', :as => :useredit

    root :to => 'static#index'
  end
end
