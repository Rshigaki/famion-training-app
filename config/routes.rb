Rails.application.routes.draw do
  
  devise_for :users, :controllers => {
      :registrations => 'users/registrations',
      :sessions => 'users/sessions'
  }
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy"
  end
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: '/letter_opener'
  end
  
  scope '/', module: :public do
    root to: 'top#index'
  end
end
