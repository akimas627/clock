Rails.application.routes.draw do
  post "posts/index"=> "posts#create"
  get "posts/index" => "posts/index"
  get "posts/new" => "posts/new"
  get"posts/show"=>"posts/show"
  get"posts/:id"=>"posts#show"
  post "posts/creat" => "posts#creat"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  
  get "home/top" => "home/top"
  root "home#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
