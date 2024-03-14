Rails.application.routes.draw do
  get root to: 'homes#top'
   # 一覧
  #get 'books' => 'books#index',as: 'book'

 # 登録
  #post 'books' => 'books#create'

 # 削除
  #delete 'books/:id' => 'books#destroy',as: 'destroy_book'

 # 詳細画面
  #get 'books/:id' => 'books#show',as: 'show_book'

 # 編集画面
  #get 'books/:id/edit' => 'books#edit',as: 'edit_book'

 # 更新
  #patch 'books/:id' => 'books#update' ,as: 'update_book'
  
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
