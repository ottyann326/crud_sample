Rails.application.routes.draw do
  # 一覧表示画面へのルーティング
  get '/users', to: 'users#index'
  # 新規投稿画面へのルーティング
  get '/users/new', to: 'users#new'
  # 新規登録を行うためのルーティング
  post '/users', to: 'users#create'
  # 削除機能の実装のルーティング
  delete '/users/:id', to: 'users#destroy'
  # 編集機能の実装のルーティング
  get '/users/:id/edit', to: 'users#edit'
  # 更新完了の実装のルーティング
  patch '/users/:id', to: 'users#update'
end
