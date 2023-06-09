Rails.application.routes.draw do
#devise_for :customers
# ユーザー用
# URL /customers/sign_in ...
devise_for :users, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
scope module: :public do
root 'homes#top'
get 'search' => 'homes#search', as: 'search'
  resources :tags, only: [:index, :show, :destroy]
  get 'users/mypage' => 'users#show', as: 'mypage'
  # customers/editのようにするとdeviseのルーティングとかぶってしまうためinformationを付け加えている。
  get 'users/information/edit' => 'users#edit', as: 'edit_information'
  patch 'users/information' => 'users#update', as: 'update_information'
  resources :hobbies do
    resource :favorites, only: [:create, :destroy]
    resources :hobby_comments, only: [:create, :destroy]
  end
end
  resources :genres, only: [:index, :create, :edit, :update]

# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}
namespace :admin do
  resources :hobbies, only: [:index, :show, :destroy] do
    resources :hobby_comments, only: [:destroy]
  end
  resources :users, only: [:index, :show, :edit, :destroy]
  resources :genres, only: [:index, :create, :edit, :update]
end

#ゲストログイン
  devise_scope :user do
    post 'user/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end
end