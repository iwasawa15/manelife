Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get 'mypage' => 'users/registrations#mypage'
  end

  resources :schedules

  root 'home#index'
end
