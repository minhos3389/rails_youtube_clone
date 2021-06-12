Rails.application.routes.draw do
  resources :videos
  devise_for :users

  # 홈 경로 (root page를 video 목록 페이지로 설정)
  root "videos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
