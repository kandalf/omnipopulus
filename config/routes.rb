Rails.application.routes.draw do
  match '/login'                  => 'omnipopulus/auth#new',      :as => :login
  match '/auth/:service/callback' => 'omnipopulus/auth#callback'
  match '/auth/failure'           => 'omnipopulus/auth#failure'
  match '/logout'                 => 'omnipopulus/auth#destroy',  :as => :logout
end
